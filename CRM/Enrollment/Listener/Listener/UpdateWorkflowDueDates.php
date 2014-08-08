<?php

class CRM_Enrollment_Listener_Listener_UpdateWorkflowDueDates extends CRM_Listener {
  public function handle(\CRM_Listener_Event $event) {
    $case_id = $event->activity->case_id;
    $case = civicrm_api3('Case', 'getsingle', array(
      'case_id' => $case_id
    ));

    foreach ($case['activities'] as $activity_id) {
      civicrm_api3('Activity', 'create', array(
        'id' => $activity_id,
        'subject' => 'I was updated by the listener framework!',
      ));
    }
  }
}
