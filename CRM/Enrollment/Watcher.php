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
    // TODO
  }
}