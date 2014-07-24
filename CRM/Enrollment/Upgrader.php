<?php

/**
 * Collection of upgrade steps
 */
class CRM_Enrollment_Upgrader extends CRM_Enrollment_Upgrader_Base {

  // By convention, functions that look like "function upgrade_NNNN()" are
  // upgrade tasks. They are executed in order (like Drupal's hook_update_N).

  /**
   *
   */
  public function install() {

    $typesConf = array(
      'checklist' => 'Enrollment Checklist',
      'policy'    => 'Drugfree Policy Draft',
      'Policy accepted' => 'Drugfree Policy Accepted',
      'testing_login' => 'Drug Testing Login',
    );

    self::createActivityTypes($typesConf);

    self::createCaseType('DFWPSEnrollment', 'Workplace Policy Enrollment');

  }

  /**
   * Example: Run an external SQL script when the module is uninstalled
   *
  public function uninstall() {
   $this->executeSqlFile('sql/myuninstall.sql');
  }

  /**
   * Enable CiviCase on enable.
   */
  public function enable() {
    $this->setComponentStatuses(array('CiviCase' => TRUE));
  }

  /**
   * Example: Run a simple query when a module is disabled
   *
  public function disable() {
    CRM_Core_DAO::executeQuery('UPDATE foo SET is_active = 0 WHERE bar = "whiz"');
  }


   */

  /**
   * Creates activity types from a list of name => labels
   *
   * @param assoc array $typesConf array( 'name' => 'label [...])
   * @return array
   * @throws CRM_Core_Exception
   */
  public static function createActivityTypes($typesConf) {
    $optionGroup = civicrm_api('OptionGroup', 'Get', array(
      'version' => 3,
      'name' => 'activity_type',
      'return' => 'id'
    ));

    $activityTypeIDs = array();
    foreach ($typesConf as $activity => $label) {
      $activityTypeIDs[] = self::safeCreateOptionValue($optionGroup, $activity, $label);
    }

    return $activityTypeIDs;
  }

  /**
   * Create new Option Value with a check based on name.
   * Returns the activity type ID
   *
   * @param array $optionGroup result
   * @param string $typeName
   * @param string $typeLabel
   * @return int
   * @throws CRM_Core_Exception
   */
  public static function safeCreateOptionValue($optionGroup, $typeName, $typeLabel) {
     $optionValue = civicrm_api('OptionValue', 'Get', array(
      'version' => 3,
      'name' => $typeName,
      'option_group_id' => $optionGroup['id'],
      'return' => 'value'
    ));

    if ($optionValue['count']) {
      $opt = current($optionValue['values']);
      return $opt['value'];
    } else {
      $params = array(
        'version' => 3,
        'name' => $typeName,
        'label' => ts($typeLabel, array('domain' => 'org.drugfreepa.enrollment')),
        'option_group_id' => $optionGroup['id'],
        'weight' => 0,
        'is_active' => '1',
      );

      if(!CRM_Utils_Array::value('value', $params)) {
        // learned this trick for generating a value from the CORE OptionValue, don't shoot me
        $value = (int) CRM_Utils_Weight::getDefaultWeight('CRM_Core_DAO_OptionValue',
          array('option_group_id' => $optionGroup['id']),
          'CONVERT(value, DECIMAL)'
        );
      }

      $result = civicrm_api('OptionValue', 'create',$params);

      if (CRM_Utils_Array::value('is_error', $result, FALSE)) {
        CRM_Core_Error::debug_var('safeCreateOptionValue', $result);
        throw new CRM_Core_Exception('Failed to create Option Value');
      }

      return $result['values'][$result['id']]['value'];
    }
  }

  /**
   * Create a new case type, providing name and label
   *
   * @param string $typeName
   * @param string $typeLabel
   * @return type
   */
  public static function createCaseType( $typeName, $typeLabel) {
    $optionGroup = civicrm_api('OptionGroup', 'Get', array(
      'version' => 3,
      'name' => 'case_type',
      'return' => 'id'
    ));

    return self::safeCreateOptionValue($optionGroup, $typeName, $typeLabel);
  }

  /**
   * Set components as enabled or disabled. Leave any other
   * components unmodified.
   *
   * Note: This API has only been tested with CiviCRM 4.4. This code was lifted
   * from the HRCase extension.
   *
   * @param array $components keys are component names (e.g. "CiviMail"); values are booleans
   * @throws CRM_Core_Exception
   */
  private function setComponentStatuses($components) {
    $getResult = civicrm_api3('setting', 'getsingle', array(
      'domain_id' => CRM_Core_Config::domainID(),
      'return' => array('enable_components'),
    ));
    if (!is_array($getResult['enable_components'])) {
      throw new CRM_Core_Exception("Failed to determine component statuses");
    }

    // Merge $components with existing list
    $enableComponents = $getResult['enable_components'];
    foreach ($components as $component => $status) {
      if ($status) {
        $enableComponents = array_merge($enableComponents, array($component));
      } else {
        $enableComponents = array_diff($enableComponents, array($component));
      }
    }
    civicrm_api3('setting', 'create', array(
      'domain_id' => CRM_Core_Config::domainID(),
      'enable_components' => $enableComponents,
    ));
    CRM_Core_Component::flushEnabledComponents();
  }

  /**
   * Example: Run a couple simple queries
   *
   * @return TRUE on success
   * @throws Exception
   *
  public function upgrade_4200() {
    $this->ctx->log->info('Applying update 4200');
    CRM_Core_DAO::executeQuery('UPDATE foo SET bar = "whiz"');
    CRM_Core_DAO::executeQuery('DELETE FROM bang WHERE willy = wonka(2)');
    return TRUE;
  } // */


  /**
   * Example: Run an external SQL script
   *
   * @return TRUE on success
   * @throws Exception
  public function upgrade_4201() {
    $this->ctx->log->info('Applying update 4201');
    // this path is relative to the extension base dir
    $this->executeSqlFile('sql/upgrade_4201.sql');
    return TRUE;
  } // */


  /**
   * Example: Run a slow upgrade process by breaking it up into smaller chunk
   *
   * @return TRUE on success
   * @throws Exception
  public function upgrade_4202() {
    $this->ctx->log->info('Planning update 4202'); // PEAR Log interface

    $this->addTask(ts('Process first step'), 'processPart1', $arg1, $arg2);
    $this->addTask(ts('Process second step'), 'processPart2', $arg3, $arg4);
    $this->addTask(ts('Process second step'), 'processPart3', $arg5);
    return TRUE;
  }
  public function processPart1($arg1, $arg2) { sleep(10); return TRUE; }
  public function processPart2($arg3, $arg4) { sleep(10); return TRUE; }
  public function processPart3($arg5) { sleep(10); return TRUE; }
  // */


  /**
   * Example: Run an upgrade with a query that touches many (potentially
   * millions) of records by breaking it up into smaller chunks.
   *
   * @return TRUE on success
   * @throws Exception
  public function upgrade_4203() {
    $this->ctx->log->info('Planning update 4203'); // PEAR Log interface

    $minId = CRM_Core_DAO::singleValueQuery('SELECT coalesce(min(id),0) FROM civicrm_contribution');
    $maxId = CRM_Core_DAO::singleValueQuery('SELECT coalesce(max(id),0) FROM civicrm_contribution');
    for ($startId = $minId; $startId <= $maxId; $startId += self::BATCH_SIZE) {
      $endId = $startId + self::BATCH_SIZE - 1;
      $title = ts('Upgrade Batch (%1 => %2)', array(
        1 => $startId,
        2 => $endId,
      ));
      $sql = '
        UPDATE civicrm_contribution SET foobar = whiz(wonky()+wanker)
        WHERE id BETWEEN %1 and %2
      ';
      $params = array(
        1 => array($startId, 'Integer'),
        2 => array($endId, 'Integer'),
      );
      $this->addTask($title, 'executeSql', $sql, $params);
    }
    return TRUE;
  } // */

}
