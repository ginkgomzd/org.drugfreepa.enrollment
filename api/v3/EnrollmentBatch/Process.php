<?php

/**
 * EnrollmentBatch.Process API specification (optional)
 * This is used for documentation and validation.
 *
 * @param array $spec description of fields supported by this API call
 * @return void
 * @see http://wiki.civicrm.org/confluence/display/CRM/API+Architecture+Standards
 */
function _civicrm_api3_enrollment_batch_process_spec(&$spec) {
}

/**
 * EnrollmentBatch.Process API
 *
 * @param array $params
 * @return array API result descriptor
 * @see civicrm_api3_create_success
 * @see civicrm_api3_create_error
 * @throws API_Exception
 */
function civicrm_api3_enrollment_batch_process() {
  $EnrollmentBatch = CRM_Enrollment_BAO_Enrollment_Batch::getBatchFromQueue();
  $EnrollmentBatch->processBatch();

  // Spec: civicrm_api3_create_success($values = 1, $params = array(), $entity = NULL, $action = NULL)
  return civicrm_api3_create_success(1, array(), 'EnrollmentBatch', 'process');
}