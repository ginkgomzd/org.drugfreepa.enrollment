<?xml version="1.0" encoding="iso-8859-1" ?>
{assign var=custom_id_counter value=$customIDs.civicrm_custom_field}
<CustomData>
  <CustomGroups>
    <CustomGroup>
      <name>{$customGroupName}</name>
      <title>Survey Questions</title>
      <extends>Activity</extends>
      <extends_entity_column_value_option_group>activity_type</extends_entity_column_value_option_group>
      <extends_entity_column_value>Survey</extends_entity_column_value>
      <style>Inline</style>
      <collapse_display>0</collapse_display>
      <help_pre></help_pre>
      <help_post></help_post>
      <weight>1</weight>
      <is_active>1</is_active>
      <table_name>civicrm_value_survey_questions_{$customIDs.civicrm_custom_group}</table_name>
      <is_multiple>0</is_multiple>
      <collapse_adv_display>0</collapse_adv_display>
      <is_reserved>0</is_reserved>
    </CustomGroup>
  </CustomGroups>
  <CustomFields>
    <CustomField>
      <name>Are_you_DOT_regulated_</name>
      <label>Are you DOT-regulated?</label>
      <data_type>Boolean</data_type>
      <html_type>Radio</html_type>
      <is_required>0</is_required>
      <is_searchable>0</is_searchable>
      <is_search_range>0</is_search_range>
      <weight>1</weight>
      <help_pre>(e.g. employ CDL drivers operating CMVs)</help_pre>
      <is_active>1</is_active>
      <is_view>0</is_view>
      <text_length>255</text_length>
      <note_columns>60</note_columns>
      <note_rows>4</note_rows>
      <column_name>are_you_dot_regulated_{$custom_id_counter}{assign var=custom_id_counter value=$custom_id_counter+1}</column_name>
      <custom_group_name>Survey_Questions</custom_group_name>
    </CustomField>
    <CustomField>
      <name>If_you_are_DOT_regulated_which_agency_are_you_regulated_bu_</name>
      <label>If you are DOT-regulated, which agency are you regulated bu?</label>
      <data_type>String</data_type>
      <html_type>Radio</html_type>
      <is_required>0</is_required>
      <is_searchable>0</is_searchable>
      <is_search_range>0</is_search_range>
      <weight>2</weight>
      <is_active>1</is_active>
      <is_view>0</is_view>
      <text_length>255</text_length>
      <note_columns>60</note_columns>
      <note_rows>4</note_rows>
      <column_name>if_you_are_dot_regulated_which_a_{$custom_id_counter}{assign var=custom_id_counter value=$custom_id_counter+1}</column_name>
      <option_group_name>if_you_are_dot_regulated_which_a_20140728212243</option_group_name>
      <custom_group_name>Survey_Questions</custom_group_name>
    </CustomField>
    <CustomField>
      <name>Do_you_have_any_contracts_over_100_000_</name>
      <label>Do you have any contracts over $100,000?</label>
      <data_type>Boolean</data_type>
      <html_type>Radio</html_type>
      <is_required>0</is_required>
      <is_searchable>0</is_searchable>
      <is_search_range>0</is_search_range>
      <weight>3</weight>
      <is_active>1</is_active>
      <is_view>0</is_view>
      <text_length>255</text_length>
      <note_columns>60</note_columns>
      <note_rows>4</note_rows>
      <column_name>do_you_have_any_contracts_over_{$custom_id_counter}{assign var=custom_id_counter value=$custom_id_counter+1}</column_name>
      <custom_group_name>Survey_Questions</custom_group_name>
    </CustomField>
    <CustomField>
      <name>Do_you_receive_any_federal_grants_of_any_amount_</name>
      <label>Do you receive any federal grants of any amount?</label>
      <data_type>Boolean</data_type>
      <html_type>Radio</html_type>
      <is_required>0</is_required>
      <is_searchable>0</is_searchable>
      <is_search_range>0</is_search_range>
      <weight>4</weight>
      <is_active>1</is_active>
      <is_view>0</is_view>
      <text_length>255</text_length>
      <note_columns>60</note_columns>
      <note_rows>4</note_rows>
      <column_name>do_you_receive_any_federal_grant_{$custom_id_counter}{assign var=custom_id_counter value=$custom_id_counter+1}</column_name>
      <custom_group_name>Survey_Questions</custom_group_name>
    </CustomField>
    <CustomField>
      <name>Are_you_insured_with_the_STate_Workers_INsurance_Fund_SWIF_for_w</name>
      <label>Are you insured with the STate Workers' INsurance Fund (SWIF) for worker's compensation?</label>
      <data_type>Boolean</data_type>
      <html_type>Radio</html_type>
      <is_required>0</is_required>
      <is_searchable>0</is_searchable>
      <is_search_range>0</is_search_range>
      <weight>5</weight>
      <is_active>1</is_active>
      <is_view>0</is_view>
      <text_length>255</text_length>
      <note_columns>60</note_columns>
      <note_rows>4</note_rows>
      <column_name>are_you_insured_with_the_state_{$custom_id_counter}{assign var=custom_id_counter value=$custom_id_counter+1}</column_name>
      <custom_group_name>Survey_Questions</custom_group_name>
    </CustomField>
    <CustomField>
      <name>Is_your_SWIF_workers_compensation_annual_policy_premium_greater_</name>
      <label>Is your SWIF workers' compensation annual policy premium greater than $20,000?</label>
      <data_type>Boolean</data_type>
      <html_type>Radio</html_type>
      <is_required>0</is_required>
      <is_searchable>0</is_searchable>
      <is_search_range>0</is_search_range>
      <weight>6</weight>
      <is_active>1</is_active>
      <is_view>0</is_view>
      <text_length>255</text_length>
      <note_columns>60</note_columns>
      <note_rows>4</note_rows>
      <column_name>is_your_swif_workers_compensatio_{$custom_id_counter}{assign var=custom_id_counter value=$custom_id_counter+1}</column_name>
      <custom_group_name>Survey_Questions</custom_group_name>
    </CustomField>
    <CustomField>
      <name>When_is_the_date_of_your_SWIF_policy_renewal_</name>
      <label>When is the date of your SWIF policy renewal?</label>
      <data_type>Date</data_type>
      <html_type>Select Date</html_type>
      <is_required>0</is_required>
      <is_searchable>0</is_searchable>
      <is_search_range>0</is_search_range>
      <weight>7</weight>
      <is_active>1</is_active>
      <is_view>0</is_view>
      <text_length>255</text_length>
      <start_date_years>0</start_date_years>
      <date_format>mm/dd/yy</date_format>
      <note_columns>60</note_columns>
      <note_rows>4</note_rows>
      <column_name>when_is_the_date_of_your_swif_po_{$custom_id_counter}{assign var=custom_id_counter value=$custom_id_counter+1}</column_name>
      <custom_group_name>Survey_Questions</custom_group_name>
    </CustomField>
    <CustomField>
      <name>Do_you_employ_unionized_employees_</name>
      <label>Do you employ unionized employees?</label>
      <data_type>String</data_type>
      <html_type>Radio</html_type>
      <is_required>0</is_required>
      <is_searchable>0</is_searchable>
      <is_search_range>0</is_search_range>
      <weight>8</weight>
      <is_active>1</is_active>
      <is_view>0</is_view>
      <text_length>3</text_length>
      <note_columns>60</note_columns>
      <note_rows>4</note_rows>
      <column_name>do_you_employ_unionized_employee_{$custom_id_counter}{assign var=custom_id_counter value=$custom_id_counter+1}</column_name>
      <option_group_name>do_you_employ_unionized_employee_20140728212833</option_group_name>
      <custom_group_name>Survey_Questions</custom_group_name>
    </CustomField>
    <CustomField>
      <name>If_you_employ_unionized_employees_do_you_have_the_authority_to_c</name>
      <label>If you employ unionized employees, do you have the authority to create a drug-fre workplace policy?</label>
      <data_type>String</data_type>
      <html_type>Radio</html_type>
      <is_required>0</is_required>
      <is_searchable>0</is_searchable>
      <is_search_range>0</is_search_range>
      <weight>9</weight>
      <is_active>1</is_active>
      <is_view>0</is_view>
      <text_length>255</text_length>
      <note_columns>60</note_columns>
      <note_rows>4</note_rows>
      <column_name>if_you_employ_unionized_employee_{$custom_id_counter}{assign var=custom_id_counter value=$custom_id_counter+1}</column_name>
      <option_group_name>do_you_employ_unionized_employee_20140728212833</option_group_name>
      <custom_group_name>Survey_Questions</custom_group_name>
    </CustomField>
    <CustomField>
      <name>Do_you_employ_temprary_employees_</name>
      <label>Do you employ temprary employees?</label>
      <data_type>String</data_type>
      <html_type>Radio</html_type>
      <is_required>0</is_required>
      <is_searchable>0</is_searchable>
      <is_search_range>0</is_search_range>
      <weight>10</weight>
      <is_active>1</is_active>
      <is_view>0</is_view>
      <text_length>3</text_length>
      <note_columns>60</note_columns>
      <note_rows>4</note_rows>
      <column_name>do_you_employ_temprary_employees_{$custom_id_counter}{assign var=custom_id_counter value=$custom_id_counter+1}</column_name>
      <option_group_name>do_you_employ_unionized_employee_20140728212833</option_group_name>
      <custom_group_name>Survey_Questions</custom_group_name>
    </CustomField>
    <CustomField>
      <name>Do_any_of_your_employees_serve_alcohol_within_the_course_of_thei</name>
      <label>Do any of your employees serve alcohol within the course of their job?</label>
      <data_type>String</data_type>
      <html_type>Radio</html_type>
      <is_required>0</is_required>
      <is_searchable>0</is_searchable>
      <is_search_range>0</is_search_range>
      <weight>11</weight>
      <is_active>1</is_active>
      <is_view>0</is_view>
      <text_length>3</text_length>
      <note_columns>60</note_columns>
      <note_rows>4</note_rows>
      <column_name>do_any_of_your_employees_serve_{$custom_id_counter}{assign var=custom_id_counter value=$custom_id_counter+1}</column_name>
      <option_group_name>do_you_employ_unionized_employee_20140728212833</option_group_name>
      <custom_group_name>Survey_Questions</custom_group_name>
    </CustomField>
    <CustomField>
      <name>Do_you_use_contractors_subcontractors_</name>
      <label>Do you use contractors/subcontractors?</label>
      <data_type>String</data_type>
      <html_type>Radio</html_type>
      <is_required>0</is_required>
      <is_searchable>0</is_searchable>
      <is_search_range>0</is_search_range>
      <weight>12</weight>
      <help_pre>(i.e. anyone who works as a representative of your company)</help_pre>
      <is_active>1</is_active>
      <is_view>0</is_view>
      <text_length>3</text_length>
      <note_columns>60</note_columns>
      <note_rows>4</note_rows>
      <column_name>do_you_use_contractors_subcontra_{$custom_id_counter}{assign var=custom_id_counter value=$custom_id_counter+1}</column_name>
      <option_group_name>do_you_employ_unionized_employee_20140728212833</option_group_name>
      <custom_group_name>Survey_Questions</custom_group_name>
    </CustomField>
    <CustomField>
      <name>Will_the_policy_apply_during_all_working_hours_</name>
      <label>Will the policy apply during all working hours?</label>
      <data_type>String</data_type>
      <html_type>Radio</html_type>
      <is_required>0</is_required>
      <is_searchable>0</is_searchable>
      <is_search_range>0</is_search_range>
      <weight>13</weight>
      <is_active>1</is_active>
      <is_view>0</is_view>
      <text_length>3</text_length>
      <note_columns>60</note_columns>
      <note_rows>4</note_rows>
      <column_name>will_the_policy_apply_during_all_{$custom_id_counter}{assign var=custom_id_counter value=$custom_id_counter+1}</column_name>
      <option_group_name>do_you_employ_unionized_employee_20140728212833</option_group_name>
      <custom_group_name>Survey_Questions</custom_group_name>
    </CustomField>
    <CustomField>
      <name>Will_this_policy_apply_whenever_conductin_business_or_representi</name>
      <label>Will this policy apply whenever conductin business or representing theorganizaion?</label>
      <data_type>String</data_type>
      <html_type>Radio</html_type>
      <is_required>0</is_required>
      <is_searchable>0</is_searchable>
      <is_search_range>0</is_search_range>
      <weight>14</weight>
      <is_active>1</is_active>
      <is_view>0</is_view>
      <text_length>3</text_length>
      <note_columns>60</note_columns>
      <note_rows>4</note_rows>
      <column_name>will_this_policy_apply_whenever_{$custom_id_counter}{assign var=custom_id_counter value=$custom_id_counter+1}</column_name>
      <option_group_name>do_you_employ_unionized_employee_20140728212833</option_group_name>
      <custom_group_name>Survey_Questions</custom_group_name>
    </CustomField>
    <CustomField>
      <name>Will_this_policy_apply_while_on_call_paid_standby_</name>
      <label>Will this policy apply while on call, paid standby?</label>
      <data_type>String</data_type>
      <html_type>Radio</html_type>
      <is_required>0</is_required>
      <is_searchable>0</is_searchable>
      <is_search_range>0</is_search_range>
      <weight>15</weight>
      <is_active>1</is_active>
      <is_view>0</is_view>
      <text_length>3</text_length>
      <note_columns>60</note_columns>
      <note_rows>4</note_rows>
      <column_name>will_this_policy_apply_while_on_{$custom_id_counter}{assign var=custom_id_counter value=$custom_id_counter+1}</column_name>
      <option_group_name>do_you_employ_unionized_employee_20140728212833</option_group_name>
      <custom_group_name>Survey_Questions</custom_group_name>
    </CustomField>
    <CustomField>
      <name>Will_this_policy_apply_at_company_sponsored_events_such_as_parti</name>
      <label>Will this policy apply at company-sponsored events such as parties?</label>
      <data_type>String</data_type>
      <html_type>Radio</html_type>
      <is_required>0</is_required>
      <is_searchable>0</is_searchable>
      <is_search_range>0</is_search_range>
      <weight>16</weight>
      <is_active>1</is_active>
      <is_view>0</is_view>
      <text_length>3</text_length>
      <note_columns>60</note_columns>
      <note_rows>4</note_rows>
      <column_name>will_this_policy_apply_at_compan_{$custom_id_counter}{assign var=custom_id_counter value=$custom_id_counter+1}</column_name>
      <option_group_name>do_you_employ_unionized_employee_20140728212833</option_group_name>
      <custom_group_name>Survey_Questions</custom_group_name>
    </CustomField>
    <CustomField>
      <name>Do_you_want_to_conduct_drug_testing_of_employees_in_the_followin</name>
      <label>Do you want to conduct drug testing of employees in the following circumstances?</label>
      <data_type>String</data_type>
      <html_type>CheckBox</html_type>
      <is_required>0</is_required>
      <is_searchable>0</is_searchable>
      <is_search_range>0</is_search_range>
      <weight>17</weight>
      <is_active>1</is_active>
      <is_view>0</is_view>
      <text_length>255</text_length>
      <note_columns>60</note_columns>
      <note_rows>4</note_rows>
      <column_name>do_you_want_to_conduct_drug_test_{$custom_id_counter}{assign var=custom_id_counter value=$custom_id_counter+1}</column_name>
      <option_group_name>do_you_want_to_conduct_drug_test_20140728213903</option_group_name>
      <custom_group_name>Survey_Questions</custom_group_name>
    </CustomField>
    <CustomField>
      <name>Do_you_want_to_conduct_alchool_testing_of_eployees_in_the_follow</name>
      <label>Do you want to conduct alchool testing of eployees in the following circumstances?</label>
      <data_type>String</data_type>
      <html_type>CheckBox</html_type>
      <is_required>0</is_required>
      <is_searchable>0</is_searchable>
      <is_search_range>0</is_search_range>
      <weight>18</weight>
      <is_active>1</is_active>
      <is_view>0</is_view>
      <text_length>255</text_length>
      <note_columns>60</note_columns>
      <note_rows>4</note_rows>
      <column_name>do_you_want_to_conduct_alchool_{$custom_id_counter}{assign var=custom_id_counter value=$custom_id_counter+1}</column_name>
      <option_group_name>do_you_want_to_conduct_alchool_t_20140728214057</option_group_name>
      <custom_group_name>Survey_Questions</custom_group_name>
    </CustomField>
    <CustomField>
      <name>Do_you_want_to_offer_an_employee_who_tests_positiity_to_have_the</name>
      <label>Do you want to offer an employee who tests positiity to have the original specimen tested at a different laboratory (submitted for a verificationtest)?ve another opportun</label>
      <data_type>Boolean</data_type>
      <html_type>Radio</html_type>
      <is_required>0</is_required>
      <is_searchable>0</is_searchable>
      <is_search_range>0</is_search_range>
      <weight>19</weight>
      <is_active>1</is_active>
      <is_view>0</is_view>
      <text_length>255</text_length>
      <note_columns>60</note_columns>
      <note_rows>4</note_rows>
      <column_name>do_you_want_to_offer_an_employee_{$custom_id_counter}{assign var=custom_id_counter value=$custom_id_counter+1}</column_name>
      <custom_group_name>Survey_Questions</custom_group_name>
    </CustomField>
    <CustomField>
      <name>If_yes_please_indicate_who_will_pay_for_the_verification_test_</name>
      <label>If yes, please indicate who will pay for the verification test:</label>
      <data_type>String</data_type>
      <html_type>Radio</html_type>
      <is_required>0</is_required>
      <is_searchable>0</is_searchable>
      <is_search_range>0</is_search_range>
      <weight>20</weight>
      <is_active>1</is_active>
      <is_view>0</is_view>
      <text_length>255</text_length>
      <note_columns>60</note_columns>
      <note_rows>4</note_rows>
      <column_name>if_yes_please_indicate_who_will_{$custom_id_counter}{assign var=custom_id_counter value=$custom_id_counter+1}</column_name>
      <option_group_name>if_yes_please_indicate_who_will__20140728214433</option_group_name>
      <custom_group_name>Survey_Questions</custom_group_name>
    </CustomField>
    <CustomField>
      <name>Indicate_what_panel_you_want_your_employees_to_be_tested_for</name>
      <label>Indicate what panel you want your employees to be tested for</label>
      <data_type>String</data_type>
      <html_type>Select</html_type>
      <is_required>0</is_required>
      <is_searchable>0</is_searchable>
      <is_search_range>0</is_search_range>
      <weight>21</weight>
      <is_active>1</is_active>
      <is_view>0</is_view>
      <text_length>255</text_length>
      <note_columns>60</note_columns>
      <note_rows>4</note_rows>
      <column_name>indicate_what_panel_you_want_you_{$custom_id_counter}{assign var=custom_id_counter value=$custom_id_counter+1}</column_name>
      <option_group_name>indicate_what_panel_you_want_you_20140728214626</option_group_name>
      <custom_group_name>Survey_Questions</custom_group_name>
    </CustomField>
    <CustomField>
      <name>Do_you_have_a_preferred_collection_site_</name>
      <label>Do you have a preferred collection site?</label>
      <data_type>String</data_type>
      <html_type>Text</html_type>
      <is_required>0</is_required>
      <is_searchable>0</is_searchable>
      <is_search_range>0</is_search_range>
      <weight>22</weight>
      <help_pre>(Please specify)</help_pre>
      <is_active>1</is_active>
      <is_view>0</is_view>
      <text_length>255</text_length>
      <note_columns>60</note_columns>
      <note_rows>4</note_rows>
      <column_name>do_you_have_a_preferred_collecti_{$custom_id_counter}{assign var=custom_id_counter value=$custom_id_counter+1}</column_name>
      <custom_group_name>Survey_Questions</custom_group_name>
    </CustomField>
    <CustomField>
      <name>Do_you_have_a_need_for_multiple_collection_sites_</name>
      <label>Do you have a need for multiple collection sites?</label>
      <data_type>Boolean</data_type>
      <html_type>Radio</html_type>
      <is_required>0</is_required>
      <is_searchable>0</is_searchable>
      <is_search_range>0</is_search_range>
      <weight>23</weight>
      <is_active>1</is_active>
      <is_view>0</is_view>
      <text_length>255</text_length>
      <note_columns>60</note_columns>
      <note_rows>4</note_rows>
      <column_name>do_you_have_a_need_for_multiple_{$custom_id_counter}{assign var=custom_id_counter value=$custom_id_counter+1}</column_name>
      <custom_group_name>Survey_Questions</custom_group_name>
    </CustomField>
    <CustomField>
      <name>If_an_employee_violates_the_policy_will_you_immediately_terminat</name>
      <label>If an employee violates the policy, will you immediately terminate the employee?</label>
      <data_type>Boolean</data_type>
      <html_type>Radio</html_type>
      <is_required>0</is_required>
      <is_searchable>0</is_searchable>
      <is_search_range>0</is_search_range>
      <weight>24</weight>
      <is_active>1</is_active>
      <is_view>0</is_view>
      <text_length>255</text_length>
      <note_columns>60</note_columns>
      <note_rows>4</note_rows>
      <column_name>if_an_employee_violates_the_poli_{$custom_id_counter}{assign var=custom_id_counter value=$custom_id_counter+1}</column_name>
      <custom_group_name>Survey_Questions</custom_group_name>
    </CustomField>
    <CustomField>
      <name>If_an_employee_violated_the_policy_will_you_offer_progressive_di</name>
      <label>If an employee violated the policy, will you offer progressive discipline instead of immediate termination?</label>
      <data_type>Boolean</data_type>
      <html_type>Radio</html_type>
      <is_required>0</is_required>
      <is_searchable>0</is_searchable>
      <is_search_range>0</is_search_range>
      <weight>25</weight>
      <is_active>1</is_active>
      <is_view>0</is_view>
      <text_length>255</text_length>
      <note_columns>60</note_columns>
      <note_rows>4</note_rows>
      <column_name>if_an_employee_violated_the_poli_{$custom_id_counter}{assign var=custom_id_counter value=$custom_id_counter+1}</column_name>
      <custom_group_name>Survey_Questions</custom_group_name>
    </CustomField>
    <CustomField>
      <name>If_so_specify_the_progression_</name>
      <label>If so, specify the progression:</label>
      <data_type>String</data_type>
      <html_type>Select</html_type>
      <is_required>0</is_required>
      <is_searchable>0</is_searchable>
      <is_search_range>0</is_search_range>
      <weight>26</weight>
      <help_pre>First Offense</help_pre>
      <is_active>1</is_active>
      <is_view>0</is_view>
      <text_length>255</text_length>
      <note_columns>60</note_columns>
      <note_rows>4</note_rows>
      <column_name>if_so_specify_the_progression_{$custom_id_counter}{assign var=custom_id_counter value=$custom_id_counter+1}</column_name>
      <option_group_name>if_so_specify_the_progression__20140728215134</option_group_name>
      <custom_group_name>Survey_Questions</custom_group_name>
    </CustomField>
    <CustomField>
      <name>Second_Offense</name>
      <label>Second Offense</label>
      <data_type>String</data_type>
      <html_type>Select</html_type>
      <is_required>0</is_required>
      <is_searchable>0</is_searchable>
      <is_search_range>0</is_search_range>
      <weight>27</weight>
      <is_active>1</is_active>
      <is_view>0</is_view>
      <text_length>255</text_length>
      <note_columns>60</note_columns>
      <note_rows>4</note_rows>
      <column_name>second_offense_{$custom_id_counter}{assign var=custom_id_counter value=$custom_id_counter+1}</column_name>
      <option_group_name>if_so_specify_the_progression__20140728215134</option_group_name>
      <custom_group_name>Survey_Questions</custom_group_name>
    </CustomField>
    <CustomField>
      <name>I_fan_employee_violates_the_policy_will_you_require_the_employee</name>
      <label>I fan employee violates the policy, will you require the employee to sign a last chance agreement?</label>
      <data_type>Boolean</data_type>
      <html_type>Radio</html_type>
      <is_required>0</is_required>
      <is_searchable>0</is_searchable>
      <is_search_range>0</is_search_range>
      <weight>28</weight>
      <is_active>1</is_active>
      <is_view>0</is_view>
      <text_length>255</text_length>
      <note_columns>60</note_columns>
      <note_rows>4</note_rows>
      <column_name>i_fan_employee_violates_the_poli_{$custom_id_counter}{assign var=custom_id_counter value=$custom_id_counter+1}</column_name>
      <custom_group_name>Survey_Questions</custom_group_name>
    </CustomField>
    <CustomField>
      <name>Will_you_want_to_inform_law_engorcement_in_the_event_of_serious_</name>
      <label>Will you want to inform law engorcement in the event of serious criminal activity at your worksite?</label>
      <data_type>Boolean</data_type>
      <html_type>Radio</html_type>
      <is_required>0</is_required>
      <is_searchable>0</is_searchable>
      <is_search_range>0</is_search_range>
      <weight>29</weight>
      <is_active>1</is_active>
      <is_view>0</is_view>
      <text_length>255</text_length>
      <note_columns>60</note_columns>
      <note_rows>4</note_rows>
      <column_name>will_you_want_to_inform_law_engo_{$custom_id_counter}{assign var=custom_id_counter value=$custom_id_counter+1}</column_name>
      <custom_group_name>Survey_Questions</custom_group_name>
    </CustomField>
    <CustomField>
      <name>Do_you_want_to_conduct_personal_property_searches_if_you_believe</name>
      <label>Do you want to conduct personal property searches if you believe there is a suspicion of a policy violation?</label>
      <data_type>Boolean</data_type>
      <html_type>Radio</html_type>
      <is_required>0</is_required>
      <is_searchable>0</is_searchable>
      <is_search_range>0</is_search_range>
      <weight>30</weight>
      <is_active>1</is_active>
      <is_view>0</is_view>
      <text_length>255</text_length>
      <note_columns>60</note_columns>
      <note_rows>4</note_rows>
      <column_name>do_you_want_to_conduct_personal_{$custom_id_counter}{assign var=custom_id_counter value=$custom_id_counter+1}</column_name>
      <custom_group_name>Survey_Questions</custom_group_name>
    </CustomField>
    <CustomField>
      <name>Do_you_have_a_FORMAL_contract_with_an_Emplyee_Assistance_Provide</name>
      <label>Do you have a FORMAL contract with an Emplyee Assistance Provider (EAP) to give your employees counseling?</label>
      <data_type>Boolean</data_type>
      <html_type>Radio</html_type>
      <is_required>0</is_required>
      <is_searchable>0</is_searchable>
      <is_search_range>0</is_search_range>
      <weight>31</weight>
      <is_active>1</is_active>
      <is_view>0</is_view>
      <text_length>255</text_length>
      <note_columns>60</note_columns>
      <note_rows>4</note_rows>
      <column_name>do_you_have_a_formal_contract_wi_{$custom_id_counter}{assign var=custom_id_counter value=$custom_id_counter+1}</column_name>
      <custom_group_name>Survey_Questions</custom_group_name>
    </CustomField>
    <CustomField>
      <name>Would_you_like_us_to_assist_you_with_training_supervisors_and_or</name>
      <label>Would you like us to assist you with training supervisors and/or employees?</label>
      <data_type>Boolean</data_type>
      <html_type>Radio</html_type>
      <is_required>0</is_required>
      <is_searchable>0</is_searchable>
      <is_search_range>0</is_search_range>
      <weight>32</weight>
      <is_active>1</is_active>
      <is_view>0</is_view>
      <text_length>255</text_length>
      <note_columns>60</note_columns>
      <note_rows>4</note_rows>
      <column_name>would_you_like_us_to_assist_you_{$custom_id_counter}{assign var=custom_id_counter value=$custom_id_counter+1}</column_name>
      <custom_group_name>Survey_Questions</custom_group_name>
    </CustomField>
    <CustomField>
      <name>Please_indicate_your_company_s_reason_for_participating_in_the_D</name>
      <label>Please indicate your company's reason for participating in the Drug-Free WorkPlace Suolutions program.</label>
      <data_type>String</data_type>
      <html_type>CheckBox</html_type>
      <is_required>0</is_required>
      <is_searchable>0</is_searchable>
      <is_search_range>0</is_search_range>
      <weight>33</weight>
      <help_pre>(Select all that apply)</help_pre>
      <is_active>1</is_active>
      <is_view>0</is_view>
      <text_length>255</text_length>
      <note_columns>60</note_columns>
      <note_rows>4</note_rows>
      <column_name>please_indicate_your_company_s_r_{$custom_id_counter}{assign var=custom_id_counter value=$custom_id_counter+1}</column_name>
      <option_group_name>please_indicate_your_company_s_r_20140728220538</option_group_name>
      <custom_group_name>Survey_Questions</custom_group_name>
    </CustomField>
    <CustomField>
      <name>Please_note_how_strongly_you_agree_or_disagree_with_each_stateme</name>
      <label>Please note how strongly you agree or disagree with each statement about your workplace</label>
      <data_type>String</data_type>
      <html_type>Text</html_type>
      <is_required>0</is_required>
      <is_searchable>0</is_searchable>
      <is_search_range>0</is_search_range>
      <weight>34</weight>
      <is_active>1</is_active>
      <is_view>0</is_view>
      <text_length>0</text_length>
      <note_columns>60</note_columns>
      <note_rows>4</note_rows>
      <column_name>please_note_how_strongly_you_agr_{$custom_id_counter}{assign var=custom_id_counter value=$custom_id_counter+1}</column_name>
      <custom_group_name>Survey_Questions</custom_group_name>
    </CustomField>
    <CustomField>
      <name>Absenteeism_among_employees_is_a_problem</name>
      <label>Absenteeism among employees is a problem</label>
      <data_type>String</data_type>
      <html_type>Radio</html_type>
      <is_required>0</is_required>
      <is_searchable>0</is_searchable>
      <is_search_range>0</is_search_range>
      <weight>35</weight>
      <is_active>1</is_active>
      <is_view>0</is_view>
      <text_length>255</text_length>
      <note_columns>60</note_columns>
      <note_rows>4</note_rows>
      <column_name>absenteeism_among_employees_is_a_{$custom_id_counter}{assign var=custom_id_counter value=$custom_id_counter+1}</column_name>
      <option_group_name>Penta-Scale Agreement</option_group_name>
      <custom_group_name>Survey_Questions</custom_group_name>
    </CustomField>
    <CustomField>
      <name>Alcohol_or_drug_related_incidents_are_a_problem</name>
      <label>Alcohol or drug related incidents are a problem</label>
      <data_type>String</data_type>
      <html_type>Radio</html_type>
      <is_required>0</is_required>
      <is_searchable>0</is_searchable>
      <is_search_range>0</is_search_range>
      <weight>36</weight>
      <is_active>1</is_active>
      <is_view>0</is_view>
      <text_length>255</text_length>
      <note_columns>60</note_columns>
      <note_rows>4</note_rows>
      <column_name>alcohol_or_drug_related_incident_{$custom_id_counter}{assign var=custom_id_counter value=$custom_id_counter+1}</column_name>
      <option_group_name>Penta-Scale Agreement</option_group_name>
      <custom_group_name>Survey_Questions</custom_group_name>
    </CustomField>
    <CustomField>
      <name>Tardiness_among_employees_is_a_problem</name>
      <label>Tardiness among employees is a problem</label>
      <data_type>String</data_type>
      <html_type>Radio</html_type>
      <is_required>0</is_required>
      <is_searchable>0</is_searchable>
      <is_search_range>0</is_search_range>
      <weight>37</weight>
      <is_active>1</is_active>
      <is_view>0</is_view>
      <text_length>255</text_length>
      <note_columns>60</note_columns>
      <note_rows>4</note_rows>
      <column_name>tardiness_among_employees_is_a_p_{$custom_id_counter}{assign var=custom_id_counter value=$custom_id_counter+1}</column_name>
      <option_group_name>Penta-Scale Agreement</option_group_name>
      <custom_group_name>Survey_Questions</custom_group_name>
    </CustomField>
    <CustomField>
      <name>Employee_retention_is_a_problem</name>
      <label>Employee retention is a problem</label>
      <data_type>String</data_type>
      <html_type>Radio</html_type>
      <is_required>0</is_required>
      <is_searchable>0</is_searchable>
      <is_search_range>0</is_search_range>
      <weight>38</weight>
      <is_active>1</is_active>
      <is_view>0</is_view>
      <text_length>255</text_length>
      <note_columns>60</note_columns>
      <note_rows>4</note_rows>
      <column_name>employee_retention_is_a_problem_{$custom_id_counter}{assign var=custom_id_counter value=$custom_id_counter+1}</column_name>
      <option_group_name>Penta-Scale Agreement</option_group_name>
      <custom_group_name>Survey_Questions</custom_group_name>
    </CustomField>
    <CustomField>
      <name>Employee_morale_is_a_problem</name>
      <label>Employee morale is a problem</label>
      <data_type>String</data_type>
      <html_type>Radio</html_type>
      <is_required>0</is_required>
      <is_searchable>0</is_searchable>
      <is_search_range>0</is_search_range>
      <weight>39</weight>
      <is_active>1</is_active>
      <is_view>0</is_view>
      <text_length>255</text_length>
      <note_columns>60</note_columns>
      <note_rows>4</note_rows>
      <column_name>employee_morale_is_a_problem_{$custom_id_counter}{assign var=custom_id_counter value=$custom_id_counter+1}</column_name>
      <option_group_name>Penta-Scale Agreement</option_group_name>
      <custom_group_name>Survey_Questions</custom_group_name>
    </CustomField>
    <CustomField>
      <name>Workers_compensation_claims_are_a_problem</name>
      <label>Workers' compensation claims are a problem</label>
      <data_type>String</data_type>
      <html_type>Radio</html_type>
      <is_required>0</is_required>
      <is_searchable>0</is_searchable>
      <is_search_range>0</is_search_range>
      <weight>40</weight>
      <is_active>1</is_active>
      <is_view>0</is_view>
      <text_length>255</text_length>
      <note_columns>60</note_columns>
      <note_rows>4</note_rows>
      <column_name>workers_compensation_claims_are_{$custom_id_counter}{assign var=custom_id_counter value=$custom_id_counter+1}</column_name>
      <option_group_name>Penta-Scale Agreement</option_group_name>
      <custom_group_name>Survey_Questions</custom_group_name>
    </CustomField>
    <CustomField>
      <name>Productivity_is_a_problem</name>
      <label>Productivity is a problem</label>
      <data_type>String</data_type>
      <html_type>Radio</html_type>
      <is_required>0</is_required>
      <is_searchable>0</is_searchable>
      <is_search_range>0</is_search_range>
      <weight>41</weight>
      <is_active>1</is_active>
      <is_view>0</is_view>
      <text_length>255</text_length>
      <note_columns>60</note_columns>
      <note_rows>4</note_rows>
      <column_name>productivity_is_a_problem_{$custom_id_counter}{assign var=custom_id_counter value=$custom_id_counter+1}</column_name>
      <option_group_name>Penta-Scale Agreement</option_group_name>
      <custom_group_name>Survey_Questions</custom_group_name>
    </CustomField>
    <CustomField>
      <name>Accidents_in_the_workplace_are_a_problem</name>
      <label>Accidents in the workplace are a problem</label>
      <data_type>String</data_type>
      <html_type>Radio</html_type>
      <is_required>0</is_required>
      <is_searchable>0</is_searchable>
      <is_search_range>0</is_search_range>
      <weight>42</weight>
      <is_active>1</is_active>
      <is_view>0</is_view>
      <text_length>255</text_length>
      <note_columns>60</note_columns>
      <note_rows>4</note_rows>
      <column_name>accidents_in_the_workplace_are_a_{$custom_id_counter}{assign var=custom_id_counter value=$custom_id_counter+1}</column_name>
      <option_group_name>Penta-Scale Agreement</option_group_name>
      <custom_group_name>Survey_Questions</custom_group_name>
    </CustomField>
    <CustomField>
      <name>Days_lost_due_to_injury_are_a_problem</name>
      <label>Days lost due to injury are a problem</label>
      <data_type>String</data_type>
      <html_type>Select</html_type>
      <is_required>0</is_required>
      <is_searchable>0</is_searchable>
      <is_search_range>0</is_search_range>
      <weight>43</weight>
      <is_active>1</is_active>
      <is_view>0</is_view>
      <text_length>255</text_length>
      <note_columns>60</note_columns>
      <note_rows>4</note_rows>
      <column_name>days_lost_due_to_injury_are_a_pr_{$custom_id_counter}{assign var=custom_id_counter value=$custom_id_counter+1}</column_name>
      <option_group_name>Penta-Scale Agreement</option_group_name>
      <custom_group_name>Survey_Questions</custom_group_name>
    </CustomField>
    <CustomField>
      <name>Theft_within_the_company_is_a_problem</name>
      <label>Theft within the company is a problem</label>
      <data_type>String</data_type>
      <html_type>Radio</html_type>
      <is_required>0</is_required>
      <is_searchable>0</is_searchable>
      <is_search_range>0</is_search_range>
      <weight>44</weight>
      <is_active>1</is_active>
      <is_view>0</is_view>
      <text_length>255</text_length>
      <note_columns>60</note_columns>
      <note_rows>4</note_rows>
      <column_name>theft_within_the_company_is_a_pr_{$custom_id_counter}{assign var=custom_id_counter value=$custom_id_counter+1}</column_name>
      <option_group_name>Penta-Scale Agreement</option_group_name>
      <custom_group_name>Survey_Questions</custom_group_name>
    </CustomField>
  </CustomFields>
  <OptionGroups>
    <OptionGroup>
      <name>if_you_are_dot_regulated_which_a_20140728212243</name>
      <title>If you are DOT-regulated, which agency are you regulated bu?</title>
      <is_reserved>1</is_reserved>
      <is_active>1</is_active>
    </OptionGroup>
    <OptionGroup>
      <name>do_you_employ_unionized_employee_20140728212833</name>
      <title>Do you employ unionized employees?</title>
      <is_reserved>1</is_reserved>
      <is_active>1</is_active>
    </OptionGroup>
    <OptionGroup>
      <name>do_you_want_to_conduct_drug_test_20140728213903</name>
      <title>Do you want to conduct drug testing of employees in the following circumstances?</title>
      <is_reserved>1</is_reserved>
      <is_active>1</is_active>
    </OptionGroup>
    <OptionGroup>
      <name>do_you_want_to_conduct_alchool_t_20140728214057</name>
      <title>Do you want to conduct alchool testing of eployees in the following circumstances?</title>
      <is_reserved>1</is_reserved>
      <is_active>1</is_active>
    </OptionGroup>
    <OptionGroup>
      <name>if_yes_please_indicate_who_will__20140728214433</name>
      <title>If yes, please indicate who will pay for the verification test:</title>
      <is_reserved>1</is_reserved>
      <is_active>1</is_active>
    </OptionGroup>
    <OptionGroup>
      <name>indicate_what_panel_you_want_you_20140728214626</name>
      <title>Indicate what panel you want your employees to be tested for</title>
      <is_reserved>1</is_reserved>
      <is_active>1</is_active>
    </OptionGroup>
    <OptionGroup>
      <name>if_so_specify_the_progression__20140728215134</name>
      <title>If so, specify the progression:</title>
      <is_reserved>1</is_reserved>
      <is_active>1</is_active>
    </OptionGroup>
    <OptionGroup>
      <name>please_indicate_your_company_s_r_20140728220538</name>
      <title>Please indicate your company's reason for participating in the Drug-Free WorkPlace Suolutions program.</title>
      <is_reserved>1</is_reserved>
      <is_active>1</is_active>
    </OptionGroup>
    <OptionGroup>
      <name>Penta-Scale Agreement</name>
      <title>Penta-Scale Agreement</title>
      <description>5 option agreement levels</description>
      <is_reserved>1</is_reserved>
      <is_active>1</is_active>
    </OptionGroup>
  </OptionGroups>
  <OptionValues>
    <OptionValue>
      <label>Federal Aviation Administration (FAA)</label>
      <value>FAA</value>
      <name>Federal_Aviation_Administration</name>
      <is_default>0</is_default>
      <weight>1</weight>
      <is_optgroup>0</is_optgroup>
      <is_reserved>0</is_reserved>
      <is_active>1</is_active>
      <option_group_name>if_you_are_dot_regulated_which_a_20140728212243</option_group_name>
    </OptionValue>
    <OptionValue>
      <label>Federal Motor Carrier Sagety Administration (FMCSA)</label>
      <value>FMCSA</value>
      <name>Federal_Motor_Carrier_Sagety_Ad</name>
      <is_default>0</is_default>
      <weight>2</weight>
      <is_optgroup>0</is_optgroup>
      <is_reserved>0</is_reserved>
      <is_active>1</is_active>
      <option_group_name>if_you_are_dot_regulated_which_a_20140728212243</option_group_name>
    </OptionValue>
    <OptionValue>
      <label>Federal Railroad Administration (FRA)</label>
      <value>FRA</value>
      <name>Federal_Railroad_Administration</name>
      <is_default>0</is_default>
      <weight>3</weight>
      <is_optgroup>0</is_optgroup>
      <is_reserved>0</is_reserved>
      <is_active>1</is_active>
      <option_group_name>if_you_are_dot_regulated_which_a_20140728212243</option_group_name>
    </OptionValue>
    <OptionValue>
      <label>Federal Transit Administration (FTA)</label>
      <value>FTA</value>
      <name>Federal_Transit_Administration_</name>
      <is_default>0</is_default>
      <weight>4</weight>
      <is_optgroup>0</is_optgroup>
      <is_reserved>0</is_reserved>
      <is_active>1</is_active>
      <option_group_name>if_you_are_dot_regulated_which_a_20140728212243</option_group_name>
    </OptionValue>
    <OptionValue>
      <label>Pipeline &amp; Hazardous Material Safety Administration (PHMSA)</label>
      <value>PHMSA</value>
      <name>Pipeline_Hazardous_Material_Saf</name>
      <is_default>0</is_default>
      <weight>5</weight>
      <is_optgroup>0</is_optgroup>
      <is_reserved>0</is_reserved>
      <is_active>1</is_active>
      <option_group_name>if_you_are_dot_regulated_which_a_20140728212243</option_group_name>
    </OptionValue>
    <OptionValue>
      <label>Unites States Coast Guard(USCG)</label>
      <value>USCG</value>
      <name>Unites_States_Coast_Guard_USCG_</name>
      <is_default>0</is_default>
      <weight>6</weight>
      <is_optgroup>0</is_optgroup>
      <is_reserved>0</is_reserved>
      <is_active>1</is_active>
      <option_group_name>if_you_are_dot_regulated_which_a_20140728212243</option_group_name>
    </OptionValue>
    <OptionValue>
      <label>Yes</label>
      <value>Yes</value>
      <name>Yes</name>
      <is_default>0</is_default>
      <weight>1</weight>
      <is_optgroup>0</is_optgroup>
      <is_reserved>0</is_reserved>
      <is_active>1</is_active>
      <option_group_name>do_you_employ_unionized_employee_20140728212833</option_group_name>
    </OptionValue>
    <OptionValue>
      <label>No</label>
      <value>No</value>
      <name>No</name>
      <is_default>0</is_default>
      <weight>2</weight>
      <is_optgroup>0</is_optgroup>
      <is_reserved>0</is_reserved>
      <is_active>1</is_active>
      <option_group_name>do_you_employ_unionized_employee_20140728212833</option_group_name>
    </OptionValue>
    <OptionValue>
      <label>N/A</label>
      <value>N/A</value>
      <name>N_A</name>
      <is_default>0</is_default>
      <weight>3</weight>
      <is_optgroup>0</is_optgroup>
      <is_reserved>0</is_reserved>
      <is_active>1</is_active>
      <option_group_name>do_you_employ_unionized_employee_20140728212833</option_group_name>
    </OptionValue>
    <OptionValue>
      <label>Pre-Employment</label>
      <value>Pre-Employment</value>
      <name>Pre_Employment</name>
      <is_default>0</is_default>
      <weight>1</weight>
      <is_optgroup>0</is_optgroup>
      <is_reserved>0</is_reserved>
      <is_active>1</is_active>
      <option_group_name>do_you_want_to_conduct_drug_test_20140728213903</option_group_name>
    </OptionValue>
    <OptionValue>
      <label>Reasonable Suspicion</label>
      <value>Reasonabel Suspicion</value>
      <name>Reasonable_Suspicion</name>
      <is_default>0</is_default>
      <weight>2</weight>
      <is_optgroup>0</is_optgroup>
      <is_reserved>0</is_reserved>
      <is_active>1</is_active>
      <option_group_name>do_you_want_to_conduct_drug_test_20140728213903</option_group_name>
    </OptionValue>
    <OptionValue>
      <label>Post-Accident</label>
      <value>Post-Accident</value>
      <name>Post_Accident</name>
      <is_default>0</is_default>
      <weight>3</weight>
      <is_optgroup>0</is_optgroup>
      <is_reserved>0</is_reserved>
      <is_active>1</is_active>
      <option_group_name>do_you_want_to_conduct_drug_test_20140728213903</option_group_name>
    </OptionValue>
    <OptionValue>
      <label>Random</label>
      <value>Random</value>
      <name>Random</name>
      <is_default>0</is_default>
      <weight>4</weight>
      <is_optgroup>0</is_optgroup>
      <is_reserved>0</is_reserved>
      <is_active>1</is_active>
      <option_group_name>do_you_want_to_conduct_drug_test_20140728213903</option_group_name>
    </OptionValue>
    <OptionValue>
      <label>Return-to-Duty</label>
      <value>Return-to-Duty</value>
      <name>Return_to_Duty</name>
      <is_default>0</is_default>
      <weight>5</weight>
      <is_optgroup>0</is_optgroup>
      <is_reserved>0</is_reserved>
      <is_active>1</is_active>
      <option_group_name>do_you_want_to_conduct_drug_test_20140728213903</option_group_name>
    </OptionValue>
    <OptionValue>
      <label>Follow-Up</label>
      <value>Follow-Up</value>
      <name>Follow_Up</name>
      <is_default>0</is_default>
      <weight>6</weight>
      <is_optgroup>0</is_optgroup>
      <is_reserved>0</is_reserved>
      <is_active>1</is_active>
      <option_group_name>do_you_want_to_conduct_drug_test_20140728213903</option_group_name>
    </OptionValue>
    <OptionValue>
      <label>Baseline (Test all employees at same time)</label>
      <value>Baseline</value>
      <name>Baseline_Test_all_employees_at_</name>
      <is_default>0</is_default>
      <weight>7</weight>
      <is_optgroup>0</is_optgroup>
      <is_reserved>0</is_reserved>
      <is_active>1</is_active>
      <option_group_name>do_you_want_to_conduct_drug_test_20140728213903</option_group_name>
    </OptionValue>
    <OptionValue>
      <label>Pre-Employment (if applicable)</label>
      <value>Pre-Employment</value>
      <name>Pre_Employment_if_applicable_</name>
      <is_default>0</is_default>
      <weight>1</weight>
      <is_optgroup>0</is_optgroup>
      <is_reserved>0</is_reserved>
      <is_active>1</is_active>
      <option_group_name>do_you_want_to_conduct_alchool_t_20140728214057</option_group_name>
    </OptionValue>
    <OptionValue>
      <label>Reasonable Suspicion</label>
      <value>Reasonable Suspicion</value>
      <name>Reasonable_Suspicion</name>
      <is_default>0</is_default>
      <weight>2</weight>
      <is_optgroup>0</is_optgroup>
      <is_reserved>0</is_reserved>
      <is_active>1</is_active>
      <option_group_name>do_you_want_to_conduct_alchool_t_20140728214057</option_group_name>
    </OptionValue>
    <OptionValue>
      <label>Post-Accident</label>
      <value>Post-Accident</value>
      <name>Post_Accident</name>
      <is_default>0</is_default>
      <weight>3</weight>
      <is_optgroup>0</is_optgroup>
      <is_reserved>0</is_reserved>
      <is_active>1</is_active>
      <option_group_name>do_you_want_to_conduct_alchool_t_20140728214057</option_group_name>
    </OptionValue>
    <OptionValue>
      <label>Return-to-Duty</label>
      <value>Return-to-Duty</value>
      <name>Return_to_Duty</name>
      <is_default>0</is_default>
      <weight>4</weight>
      <is_optgroup>0</is_optgroup>
      <is_reserved>0</is_reserved>
      <is_active>1</is_active>
      <option_group_name>do_you_want_to_conduct_alchool_t_20140728214057</option_group_name>
    </OptionValue>
    <OptionValue>
      <label>Follow-up</label>
      <value>Follow-up</value>
      <name>Follow_up</name>
      <is_default>0</is_default>
      <weight>5</weight>
      <is_optgroup>0</is_optgroup>
      <is_reserved>0</is_reserved>
      <is_active>1</is_active>
      <option_group_name>do_you_want_to_conduct_alchool_t_20140728214057</option_group_name>
    </OptionValue>
    <OptionValue>
      <label>the employee in all cases</label>
      <value>employee</value>
      <name>the_employee_in_all_cases</name>
      <is_default>0</is_default>
      <weight>1</weight>
      <is_optgroup>0</is_optgroup>
      <is_reserved>0</is_reserved>
      <is_active>1</is_active>
      <option_group_name>if_yes_please_indicate_who_will__20140728214433</option_group_name>
    </OptionValue>
    <OptionValue>
      <label>the employer in all cases</label>
      <value>employer</value>
      <name>the_employer_in_all_cases</name>
      <is_default>0</is_default>
      <weight>2</weight>
      <is_optgroup>0</is_optgroup>
      <is_reserved>0</is_reserved>
      <is_active>1</is_active>
      <option_group_name>if_yes_please_indicate_who_will__20140728214433</option_group_name>
    </OptionValue>
    <OptionValue>
      <label>the employee if positive &amp; employer if negative</label>
      <value>depends</value>
      <name>the_employee_if_positive_employ</name>
      <is_default>0</is_default>
      <weight>3</weight>
      <is_optgroup>0</is_optgroup>
      <is_reserved>0</is_reserved>
      <is_active>1</is_active>
      <option_group_name>if_yes_please_indicate_who_will__20140728214433</option_group_name>
    </OptionValue>
    <OptionValue>
      <label>5-Panel (street drugs)</label>
      <value>5-Panel</value>
      <name>5_Panel_street_drugs_</name>
      <is_default>0</is_default>
      <weight>1</weight>
      <is_optgroup>0</is_optgroup>
      <is_reserved>0</is_reserved>
      <is_active>1</is_active>
      <option_group_name>indicate_what_panel_you_want_you_20140728214626</option_group_name>
    </OptionValue>
    <OptionValue>
      <label>10-Panel (street + prescription drugs)</label>
      <value>10-Panel</value>
      <name>10_Panel_street_prescription_dr</name>
      <is_default>0</is_default>
      <weight>2</weight>
      <is_optgroup>0</is_optgroup>
      <is_reserved>0</is_reserved>
      <is_active>1</is_active>
      <option_group_name>indicate_what_panel_you_want_you_20140728214626</option_group_name>
    </OptionValue>
    <OptionValue>
      <label>written warning for file</label>
      <value>warning</value>
      <name>written_warning_for_file</name>
      <is_default>0</is_default>
      <weight>1</weight>
      <is_optgroup>0</is_optgroup>
      <is_reserved>0</is_reserved>
      <is_active>1</is_active>
      <option_group_name>if_so_specify_the_progression__20140728215134</option_group_name>
    </OptionValue>
    <OptionValue>
      <label>immediate suspension without pay</label>
      <value>suspension</value>
      <name>immediate_suspension_without_pa</name>
      <is_default>0</is_default>
      <weight>2</weight>
      <is_optgroup>0</is_optgroup>
      <is_reserved>0</is_reserved>
      <is_active>1</is_active>
      <option_group_name>if_so_specify_the_progression__20140728215134</option_group_name>
    </OptionValue>
    <OptionValue>
      <label>mandatory referral to treatment</label>
      <value>treatment</value>
      <name>mandatory_referral_to_treatment</name>
      <is_default>0</is_default>
      <weight>3</weight>
      <is_optgroup>0</is_optgroup>
      <is_reserved>0</is_reserved>
      <is_active>1</is_active>
      <option_group_name>if_so_specify_the_progression__20140728215134</option_group_name>
    </OptionValue>
    <OptionValue>
      <label>immediate termination</label>
      <value>termination</value>
      <name>immediate_termination</name>
      <is_default>0</is_default>
      <weight>4</weight>
      <is_optgroup>0</is_optgroup>
      <is_reserved>0</is_reserved>
      <is_active>1</is_active>
      <option_group_name>if_so_specify_the_progression__20140728215134</option_group_name>
    </OptionValue>
    <OptionValue>
      <label>To establish a drug-free workplace program for my company</label>
      <value>program</value>
      <name>To_establish_a_drug_free_workpl</name>
      <is_default>0</is_default>
      <weight>1</weight>
      <is_optgroup>0</is_optgroup>
      <is_reserved>0</is_reserved>
      <is_active>1</is_active>
      <option_group_name>please_indicate_your_company_s_r_20140728220538</option_group_name>
    </OptionValue>
    <OptionValue>
      <label>To develop a drug-free workplace policy for my company</label>
      <value>policy</value>
      <name>To_develop_a_drug_free_workplac</name>
      <is_default>0</is_default>
      <weight>2</weight>
      <is_optgroup>0</is_optgroup>
      <is_reserved>0</is_reserved>
      <is_active>1</is_active>
      <option_group_name>please_indicate_your_company_s_r_20140728220538</option_group_name>
    </OptionValue>
    <OptionValue>
      <label>To offer my emmployees an Employee Assistance Program</label>
      <value>EAP</value>
      <name>To_offer_my_emmployees_an_Emplo</name>
      <is_default>0</is_default>
      <weight>3</weight>
      <is_optgroup>0</is_optgroup>
      <is_reserved>0</is_reserved>
      <is_active>1</is_active>
      <option_group_name>please_indicate_your_company_s_r_20140728220538</option_group_name>
    </OptionValue>
    <OptionValue>
      <label>to educate my employees about the dangers of workplace substance abuse</label>
      <value>education</value>
      <name>to_educate_my_employees_about_t</name>
      <is_default>0</is_default>
      <weight>5</weight>
      <is_optgroup>0</is_optgroup>
      <is_reserved>0</is_reserved>
      <is_active>1</is_active>
      <option_group_name>please_indicate_your_company_s_r_20140728220538</option_group_name>
    </OptionValue>
    <OptionValue>
      <label>To qualify for a reduction in my workers' compensation premium</label>
      <value>workers comp</value>
      <name>To_qualify_for_a_reduction_in_m</name>
      <is_default>0</is_default>
      <weight>6</weight>
      <is_optgroup>0</is_optgroup>
      <is_reserved>0</is_reserved>
      <is_active>1</is_active>
      <option_group_name>please_indicate_your_company_s_r_20140728220538</option_group_name>
    </OptionValue>
    <OptionValue>
      <label>To perform drug testing on my employees</label>
      <value>testing</value>
      <name>To_perform_drug_testing_on_my_e</name>
      <is_default>0</is_default>
      <weight>7</weight>
      <is_optgroup>0</is_optgroup>
      <is_reserved>0</is_reserved>
      <is_active>1</is_active>
      <option_group_name>please_indicate_your_company_s_r_20140728220538</option_group_name>
    </OptionValue>
    <OptionValue>
      <label>TO educate my supervisors on substance abuse in the workplace</label>
      <value>training</value>
      <name>TO_educate_my_supervisors_on_su</name>
      <is_default>0</is_default>
      <weight>8</weight>
      <is_optgroup>0</is_optgroup>
      <is_reserved>0</is_reserved>
      <is_active>1</is_active>
      <option_group_name>please_indicate_your_company_s_r_20140728220538</option_group_name>
    </OptionValue>
    <OptionValue>
      <label>To gain State or Federal contracts</label>
      <value>contracts</value>
      <name>To_gain_State_or_Federal_contra</name>
      <is_default>0</is_default>
      <weight>9</weight>
      <is_optgroup>0</is_optgroup>
      <is_reserved>0</is_reserved>
      <is_active>1</is_active>
      <option_group_name>please_indicate_your_company_s_r_20140728220538</option_group_name>
    </OptionValue>
    <OptionValue>
      <label>To advertise my company as a &quot;Drug-Free Company&quot;</label>
      <value>advertise</value>
      <name>To_advertise_my_company_as_a_Dr</name>
      <is_default>0</is_default>
      <weight>10</weight>
      <is_optgroup>0</is_optgroup>
      <is_reserved>0</is_reserved>
      <is_active>1</is_active>
      <option_group_name>please_indicate_your_company_s_r_20140728220538</option_group_name>
    </OptionValue>
    <OptionValue>
      <label>To be in compliance with fedral governemnt requirements</label>
      <value>compliance</value>
      <name>To_be_in_compliance_with_fedral</name>
      <is_default>0</is_default>
      <weight>4</weight>
      <is_optgroup>0</is_optgroup>
      <is_reserved>0</is_reserved>
      <is_active>1</is_active>
      <option_group_name>please_indicate_your_company_s_r_20140728220538</option_group_name>
    </OptionValue>
    <OptionValue>
      <label>Strongly Agree</label>
      <value>5</value>
      <name>Strongly Agree</name>
      <filter>0</filter>
      <is_default>0</is_default>
      <weight>1</weight>
      <is_optgroup>0</is_optgroup>
      <is_reserved>0</is_reserved>
      <is_active>1</is_active>
      <option_group_name>Penta-Scale Agreement</option_group_name>
    </OptionValue>
    <OptionValue>
      <label>Agree</label>
      <value>4</value>
      <name>Agree</name>
      <filter>0</filter>
      <is_default>0</is_default>
      <weight>2</weight>
      <is_optgroup>0</is_optgroup>
      <is_reserved>0</is_reserved>
      <is_active>1</is_active>
      <option_group_name>Penta-Scale Agreement</option_group_name>
    </OptionValue>
    <OptionValue>
      <label>Neutral</label>
      <value>3</value>
      <name>Neutral</name>
      <filter>0</filter>
      <is_default>0</is_default>
      <weight>3</weight>
      <is_optgroup>0</is_optgroup>
      <is_reserved>0</is_reserved>
      <is_active>1</is_active>
      <option_group_name>Penta-Scale Agreement</option_group_name>
    </OptionValue>
    <OptionValue>
      <label>Disagree</label>
      <value>2</value>
      <name>Disagree</name>
      <filter>0</filter>
      <is_default>0</is_default>
      <weight>4</weight>
      <is_optgroup>0</is_optgroup>
      <is_reserved>0</is_reserved>
      <is_active>1</is_active>
      <option_group_name>Penta-Scale Agreement</option_group_name>
    </OptionValue>
    <OptionValue>
      <label>Disagree Strongly</label>
      <value>1</value>
      <name>Disagree Strongly</name>
      <filter>0</filter>
      <is_default>0</is_default>
      <weight>5</weight>
      <is_optgroup>0</is_optgroup>
      <is_reserved>0</is_reserved>
      <is_active>1</is_active>
      <option_group_name>Penta-Scale Agreement</option_group_name>
    </OptionValue>
  </OptionValues>
</CustomData>
