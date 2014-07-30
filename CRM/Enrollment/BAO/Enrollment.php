<?php

/**
 * An enrollment is a meta-object. It groups together Memberships and
 * Cases related to an enrollment in Drug-Free PA's Workplace Solutions program.
 */
class CRM_Enrollment_BAO_Enrollment {

  const POLICY_CASE_TYPE = 'DFWPSPolicy';

  /**
   * Membership types whose names match this pattern are considered to be
   * Enrollment membership types.
   */
  const MEMBERSHIP_TYPE_NAME_PATTERN = 'Drug Free Workplace Membership%';

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

  /**
   * The ID of the type of case that should be created by $this->safeCreateCase().
   *
   * @var int
   */
  private static $policy_case_type_id;

  /**
   * @param int $membership_id Membership ID for this Enrollment
   * @param array $membership Membership data as returned by API get
   */
  public function __construct($membership_id, array $membership = array()) {
    $this->id = $membership_id;

    if (!empty($membership)) {
      $this->membership = $membership;
    } else {
      $this->membership = civicrm_api3('Membership', 'getsingle', array(
        'id' => $this->id,
      ));
    }

    $this->client_id = $this->membership['contact_id'];

    $display_name = civicrm_api3('Contact', 'getvalue', array(
       'id' => $this->client_id,
        'return' => 'display_name',
    ));

    $this->client_display_name = $display_name ? $display_name : ts('Client %1', array(1 => $this->client_id, 'domain' => 'org.drugfreepa.enrollment'));

    if (empty(self::$policy_case_type_id)) {
      $optionGroup = civicrm_api3('OptionGroup', 'getsingle', array(
        'name' => 'case_type',
        'api.OptionValue.getvalue' => array(
          'option_group_id' => '$value.id',
          'name' => self::POLICY_CASE_TYPE,
          'return' => 'value',
        ),
      ));
      self::$policy_case_type_id = $optionGroup['api.OptionValue.getvalue'];
    }
  }

  public function __get($name) {
    return $this->$name;
  }

  /**
   * Creates a case for the Enrollment, if $this->case isn't already set. The
   * resulting case is stored in $this->case, formatted as an array as returned
   * by api.Case.create.
   *
   * This method is meant to be called in a batch and serves to decouple the
   * instantiation of the Enrollment object from the case creation.
   *
   * @return boolean FALSE if the case already exists
   */
  public function safeCreateCase() {
    if (empty($this->case)) {
      $result = civicrm_api3('Case', 'create', array(
        'case_type_id' => self::$policy_case_type_id,
        'case_type' => self::POLICY_CASE_TYPE,
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
      'name' => array('LIKE' => self::MEMBERSHIP_TYPE_NAME_PATTERN),
    ));

    if (!$result['count']) {
      throw new Exception('Drug Free Workplace Memberships not found');
    }

    return $result['values'];
  }
}