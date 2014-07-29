<?php

/**
 * An enrollment batch is a collection of enrollments retrieved from the queue
 */
class CRM_Enrollment_BAO_Enrollment_Batch {
  const CONTRIBUTION_QUEUE_NAME = 'org.drugfreepa.enrollment.contributions';

  /**
   * @var array of CRM_Enrollment_BAO_Enrollment objects, indexed by enrollment
   *      ID (i.e., membership_id).
   */
  private $enrollments = array();


  /**
   * Retrieves Contribution IDs queued by _enrollment_civicrm_post_Contribution,
   * filters out those not associated with enrollment memberships.
   *
   * @return \CRM_Enrollment_BAO_Enrollment_Batch
   */
  public static function getBatchFromQueue() {
    $batch = new CRM_Enrollment_BAO_Enrollment_Batch();

    $params = array('name' => self::CONTRIBUTION_QUEUE_NAME);
    $queueManager = new CRM_Queue_Queue_Sql($params);

    for ($i = $queueManager->numberOfItems(); $i > 0; $i--) {
      $queueItem = $queueManager->claimItem(3600);

      if ($queueItem !== FALSE) {
        $contribution_id = $queueItem->data['entity_id'];
        $api = civicrm_api3('MembershipPayment', 'get', array(
          'contribution_id' => $contribution_id,
          'api.Membership.get' => array(
            'id' => '$value.membership_id',
            'membership_type_id' => array('IN' => array_keys(CRM_Enrollment_BAO_Enrollment::getEnrollmentMembershipTypes())),
          ),
        ));

        // only contributions which are related to memberships of the specified
        // types are added to the result
        foreach($api['values'] as $data) {
          if ($data['api.Membership.get']['count']) {
            $membership_id = $data['api.Membership.get']['values']['id'];
            $batch->enrollments[$membership_id] = new CRM_Enrollment_BAO_Enrollment($membership_id);
          }
        }

        $queueManager->deleteItem($queueItem);
      }
    }

    return $batch;
  }

  public function processBatch() {
    foreach ($this->enrollments as $Enrollment) {
      $Enrollment->safeCreateCase();
    }
  }
}