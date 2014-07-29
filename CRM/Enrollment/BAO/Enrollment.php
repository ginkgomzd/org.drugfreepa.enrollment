<?php

/**
 * An enrollment is a meta-object. It groups together Memberships and
 * Cases related to an enrollment in Drug-Free PA's Workplace Solutions program.
 */
class CRM_Enrollment_BAO_Enrollment {

  const POLICY_CASE_TYPE = 'DFWPSPolicy';

  /**
   * Case data as returned by API get
   *
   * @var array
   */
  private $case = array();

  /**
   * Display name of the enrollee.
   *
   * @var string
   */
  private $client_display_name;

  /**
   * Contact ID of the enrollee.
   *
   * @var int
   */
  private $client_id;

  /**
   * The Enrollment ID is the ID of the associated membership.
   *
   * @var int
   */
  private $id;

  /**
   * Membership data as returned by API get
   *
   * @var array
   */
  private $membership = array();


  public function __construct($membership_id, $membership = array()) {
    $this->id = $membership_id;

    if (!empty($membership)) {
      $this->membership = $membership;
    } else {
      $this->membership = civicrm_api3('Membership', 'getsingle', array(
        'id' => $this->id,
      ));
    }

    $this->client_id = $this->membership['contact_id'];

    try {
      $this->client_display_name = civicrm_api3('Contact', 'getvalue', array(
         'id' => $this->client_id,
          'return' => 'display_name',
      ));
    } catch (Exception $e) {
      $this->client_display_name = ts('Client %1', array(1 => $this->client_id, 'domain' => 'org.drugfreepa.enrollment'));
    }
  }

  public function __get($name) {
    return $this->$name;
  }

  /**
   * @return boolean FALSE if the case already exists
   */
  public function safeCreateCase() {
    if (empty($this->case)) {
      // TODO: it's kind of dumb to look this up for each new case... we should
      // cache this somewhere...
      $optionGroup = civicrm_api3('OptionGroup', 'getsingle', array(
        'name' => 'case_type',
        'api.OptionValue.getvalue' => array(
          'option_group_id' => '$value.id',
          'name' => self::POLICY_CASE_TYPE,
          'return' => 'value',
        ),
      ));
      $caseTypeId = $optionGroup['api.OptionValue.getvalue'];
      // end TODO

      $result = civicrm_api3('Case', 'create', array(
        'case_type_id' => $caseTypeId,
        'contact_id' => $this->client_id,
        'start_date' => date('Y-m-d'),
        'subject' => ts('Workplace Policy for %1', array(1 => $this->client_display_name, 'domain' => 'org.drugfreepa.enrollment')),
      ));

      $this->case = $result['value'];

      return TRUE;
    }
    return FALSE;
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