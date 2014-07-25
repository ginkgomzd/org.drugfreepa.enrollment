<?php

/**
 * A Watcher raises an event when certain conditions are met.
 */
class CRM_Enrollment_Watcher {
  const contributionQueueName = 'org.drugfreepa.enrollment.contributions';


  /**
   * Retrieves Contributions IDs queued by _enrollment_civicrm_post_Contribution
   * and returns only those associated with memberships related to Enrollment.
   *
   * @return array Returns an array of arrays. The outer array is numerically
   *               indexed; the nested arrays are keyed with entity_id and
   *               entity table
   */
  public static function getCompletedEnrollmentContributionsFromQueue() {
    $result = array();

    $params = array('name' => self::contributionQueueName);
    $queueManager = new CRM_Queue_Queue_Sql($params);

    for ($i = $queueManager->numberOfItems(); $i > 0; $i--) {
      $queueItem = $queueManager->claimItem(3600);

      if ($queueItem !== FALSE) {
        $api = civicrm_api3('MembershipPayment', 'get', array(
          'contribution_id' => $queueItem->data['entity_id'],
          'api.Membership.get' => array(
            'id' => '$value.membership_id',
            'membership_type_id' => array('IN' => array_keys(self::getEnrollmentMembershipTypes())),
          ),
        ));

        // only contributions which are related to memberships of the specified
        // types are added to the result
        foreach($api['values'] as $data) {
          if ($data['api.Membership.get']['count']) {
            $result[] = $queueItem->data;
          }
        }

        $queueManager->deleteItem($queueItem);
      }
    }

    return $result;
  }

  /**
   * @return array Keyed with membership type IDs; values as returned from API
   */
  public static function getEnrollmentMembershipTypes() {
    $result = civicrm_api3('MembershipType', 'get', array(
      'name' => array('LIKE' => 'Drug Free Workplace Membership%'),
    ));

    if (!$result['count']) {
      throw new Exception('Drug Free Workplace Memberships not found');
    }

    return $result['values'];
  }
}