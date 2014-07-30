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
   * Private constructor function to prevent external instantiation
   */
  private function __construct() { }

  /**
   * Retrieves Contribution IDs queued by _enrollment_civicrm_post_Contribution,
   * filters out those not associated with enrollment memberships.
   *
   * @return \CRM_Enrollment_BAO_Enrollment_Batch
   */
  public static function getBatchFromQueue() {
    $batch = new self();

    $params = array('name' => self::CONTRIBUTION_QUEUE_NAME);
    $queueManager = new CRM_Queue_Queue_Sql($params);

    for ($i = $queueManager->numberOfItems(); $i > 0; $i--) {
      $timeout = 3600;
      $queueItem = $queueManager->claimItem($timeout);

      if ($queueItem !== FALSE) {
        $contribution_id = $queueItem->data['entity_id'];

        $membershipPayments = civicrm_api3('MembershipPayment', 'get', array(
          'contribution_id' => $contribution_id,
          'api.Membership.get' => array(
            'id' => '$value.membership_id',
            // This param filters out memberships not in our target group. The
            // count (i.e., $membershipPayments['values']['api.Membership.get']['count'])
            // determines what we do with the results of this API call (see
            // loop below)
            'membership_type_id' => array('IN' => array_keys(CRM_Enrollment_BAO_Enrollment::getEnrollmentMembershipTypes())),
          ),
        ));

        foreach($membershipPayments['values'] as $data) {
          if ($data['api.Membership.get']['count']) {
            $membership = current($data['api.Membership.get']['values']);
            $membership_id = $membership['id'];
            $batch->enrollments[$membership_id] = new CRM_Enrollment_BAO_Enrollment($membership_id, $membership);
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