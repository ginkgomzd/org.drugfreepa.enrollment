<?php

class CRM_Enrollment_Listener_Event_CaseActivityCompleted extends CRM_Listener_Event {

  public $activity;

  public function __construct(CRM_Activity_DAO_Activity $activity) {
    $this->activity = $activity;
  }

  public function raiseConditionsAreMet() {
    $activityStatuses = CRM_Activity_BAO_Activity::buildOptions('activity_status_id');
    $completedStatusID = array_search('Completed', $activityStatuses);

    if (
      property_exists($this->activity, 'case_id')
      && (int) $this->activity->status_id === (int) $completedStatusID
    ){
      return TRUE;
    } else {
      return FALSE;
    }
  }
}
