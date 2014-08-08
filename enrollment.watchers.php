<?php

/**
 * Implementation of hook_civicrm_post(). This is a poor man's dispatcher.
 *
 */
function enrollment_civicrm_post($op, $objectName, $objectId, &$objectRef) {
  $f = '_' . __FUNCTION__ . '_' . $objectName;
  if (function_exists($f)) {
    $f($op, $objectName, $objectId, $objectRef);
  }

}

/**
 * Delegated implementation of hook_civicrm_post for Contribution objects
 *
 * When a Contribution enters completed status, put it in a queue. Another process
 * will later check to see if the Contribution is related to certain Membership
 * types; we can't do that check here because the MembershipPayment record hasn't
 * been created yet.
 *
 * @link http://wiki.civicrm.org/confluence/display/CRMDOC/hook_civicrm_post
 */
function _enrollment_civicrm_post_Contribution($op, $objectName, $objectId, &$objectRef) {

  $result = civicrm_api3('OptionGroup', 'getsingle', array(
    'name' => 'contribution_status',
    'api.OptionValue.getvalue' => array(
      'name' => 'Completed',
      'return' => 'value',
    ),
  ));
  $completed_status_id = $result['api.OptionValue.getvalue'];

  if (
    in_array($op, array('create', 'edit')) &&
    $objectRef->contribution_status_id == $completed_status_id
  ) {
    $params = array('name' => CRM_Enrollment_BAO_Enrollment_Batch::CONTRIBUTION_QUEUE_NAME);
    $queueManager = new CRM_Queue_Queue_Sql($params);
    $data = array(
      'entity_table' => 'civicrm_contribution',
      'entity_id' => $objectId,
    );
    $queueManager->createItem($data);
  }
}

/**
 * Delegated implementation of hook_civicrm_post for Activity objects
 *
 * @link http://wiki.civicrm.org/confluence/display/CRMDOC/hook_civicrm_post
 */
function _enrollment_civicrm_post_Activity($op, $objectName, $objectId, &$activity) {
  $event = new CRM_Enrollment_Listener_Event_CaseActivityCompleted($activity);
  $event->raiseCondtionally();
}