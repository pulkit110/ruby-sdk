=begin
Wallee API: 1.0.0

The wallee API allows an easy interaction with the wallee web service.



Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

# Common files
require 'wallee-ruby-sdk/api_client'
require 'wallee-ruby-sdk/api_error'
require 'wallee-ruby-sdk/version'
require 'wallee-ruby-sdk/configuration'

# Models
require 'wallee-ruby-sdk/models/abstract_account_update'
require 'wallee-ruby-sdk/models/abstract_application_user_update'
require 'wallee-ruby-sdk/models/abstract_debt_collection_case_update'
require 'wallee-ruby-sdk/models/abstract_human_user_update'
require 'wallee-ruby-sdk/models/abstract_payment_link_update'
require 'wallee-ruby-sdk/models/abstract_space_update'
require 'wallee-ruby-sdk/models/abstract_subscriber_update'
require 'wallee-ruby-sdk/models/abstract_subscription_affiliate_update'
require 'wallee-ruby-sdk/models/abstract_subscription_metric_update'
require 'wallee-ruby-sdk/models/abstract_subscription_product_active'
require 'wallee-ruby-sdk/models/abstract_token_update'
require 'wallee-ruby-sdk/models/abstract_transaction_pending'
require 'wallee-ruby-sdk/models/abstract_webhook_listener_update'
require 'wallee-ruby-sdk/models/abstract_webhook_url_update'
require 'wallee-ruby-sdk/models/account'
require 'wallee-ruby-sdk/models/account_create'
require 'wallee-ruby-sdk/models/account_state'
require 'wallee-ruby-sdk/models/account_type'
require 'wallee-ruby-sdk/models/account_update'
require 'wallee-ruby-sdk/models/address'
require 'wallee-ruby-sdk/models/address_create'
require 'wallee-ruby-sdk/models/application_user'
require 'wallee-ruby-sdk/models/application_user_create'
require 'wallee-ruby-sdk/models/application_user_create_with_mac_key'
require 'wallee-ruby-sdk/models/application_user_update'
require 'wallee-ruby-sdk/models/charge'
require 'wallee-ruby-sdk/models/charge_attempt'
require 'wallee-ruby-sdk/models/charge_attempt_environment'
require 'wallee-ruby-sdk/models/charge_attempt_state'
require 'wallee-ruby-sdk/models/charge_flow'
require 'wallee-ruby-sdk/models/charge_flow_level'
require 'wallee-ruby-sdk/models/charge_flow_level_configuration'
require 'wallee-ruby-sdk/models/charge_flow_level_configuration_type'
require 'wallee-ruby-sdk/models/charge_flow_level_state'
require 'wallee-ruby-sdk/models/charge_state'
require 'wallee-ruby-sdk/models/charge_type'
require 'wallee-ruby-sdk/models/client_error'
require 'wallee-ruby-sdk/models/client_error_type'
require 'wallee-ruby-sdk/models/condition'
require 'wallee-ruby-sdk/models/condition_type'
require 'wallee-ruby-sdk/models/connector_invocation'
require 'wallee-ruby-sdk/models/connector_invocation_stage'
require 'wallee-ruby-sdk/models/creation_entity_state'
require 'wallee-ruby-sdk/models/criteria_operator'
require 'wallee-ruby-sdk/models/customers_presence'
require 'wallee-ruby-sdk/models/data_collection_type'
require 'wallee-ruby-sdk/models/database_translated_string'
require 'wallee-ruby-sdk/models/database_translated_string_create'
require 'wallee-ruby-sdk/models/database_translated_string_item'
require 'wallee-ruby-sdk/models/database_translated_string_item_create'
require 'wallee-ruby-sdk/models/debt_collection_case'
require 'wallee-ruby-sdk/models/debt_collection_case_create'
require 'wallee-ruby-sdk/models/debt_collection_case_document'
require 'wallee-ruby-sdk/models/debt_collection_case_source'
require 'wallee-ruby-sdk/models/debt_collection_case_state'
require 'wallee-ruby-sdk/models/debt_collection_case_update'
require 'wallee-ruby-sdk/models/debt_collection_environment'
require 'wallee-ruby-sdk/models/debt_collection_receipt'
require 'wallee-ruby-sdk/models/debt_collection_receipt_source'
require 'wallee-ruby-sdk/models/debt_collector'
require 'wallee-ruby-sdk/models/debt_collector_condition'
require 'wallee-ruby-sdk/models/debt_collector_condition_type'
require 'wallee-ruby-sdk/models/debt_collector_configuration'
require 'wallee-ruby-sdk/models/delivery_indication'
require 'wallee-ruby-sdk/models/delivery_indication_decision_reason'
require 'wallee-ruby-sdk/models/delivery_indication_state'
require 'wallee-ruby-sdk/models/document_template'
require 'wallee-ruby-sdk/models/document_template_type'
require 'wallee-ruby-sdk/models/entity_export_request'
require 'wallee-ruby-sdk/models/entity_query'
require 'wallee-ruby-sdk/models/entity_query_filter'
require 'wallee-ruby-sdk/models/entity_query_filter_type'
require 'wallee-ruby-sdk/models/entity_query_order_by'
require 'wallee-ruby-sdk/models/entity_query_order_by_type'
require 'wallee-ruby-sdk/models/environment'
require 'wallee-ruby-sdk/models/failure_category'
require 'wallee-ruby-sdk/models/failure_reason'
require 'wallee-ruby-sdk/models/feature'
require 'wallee-ruby-sdk/models/gender'
require 'wallee-ruby-sdk/models/human_user'
require 'wallee-ruby-sdk/models/human_user_create'
require 'wallee-ruby-sdk/models/human_user_update'
require 'wallee-ruby-sdk/models/installment_calculated_plan'
require 'wallee-ruby-sdk/models/installment_calculated_slice'
require 'wallee-ruby-sdk/models/installment_payment'
require 'wallee-ruby-sdk/models/installment_payment_slice'
require 'wallee-ruby-sdk/models/installment_payment_slice_state'
require 'wallee-ruby-sdk/models/installment_payment_state'
require 'wallee-ruby-sdk/models/installment_plan_configuration'
require 'wallee-ruby-sdk/models/installment_plan_slice_configuration'
require 'wallee-ruby-sdk/models/label'
require 'wallee-ruby-sdk/models/label_descriptor'
require 'wallee-ruby-sdk/models/label_descriptor_category'
require 'wallee-ruby-sdk/models/label_descriptor_group'
require 'wallee-ruby-sdk/models/label_descriptor_type'
require 'wallee-ruby-sdk/models/legal_organization_form'
require 'wallee-ruby-sdk/models/line_item'
require 'wallee-ruby-sdk/models/line_item_attribute'
require 'wallee-ruby-sdk/models/line_item_attribute_create'
require 'wallee-ruby-sdk/models/line_item_create'
require 'wallee-ruby-sdk/models/line_item_reduction'
require 'wallee-ruby-sdk/models/line_item_reduction_create'
require 'wallee-ruby-sdk/models/line_item_type'
require 'wallee-ruby-sdk/models/localized_string'
require 'wallee-ruby-sdk/models/manual_task'
require 'wallee-ruby-sdk/models/manual_task_action'
require 'wallee-ruby-sdk/models/manual_task_action_style'
require 'wallee-ruby-sdk/models/manual_task_state'
require 'wallee-ruby-sdk/models/manual_task_type'
require 'wallee-ruby-sdk/models/metric_usage'
require 'wallee-ruby-sdk/models/one_click_payment_mode'
require 'wallee-ruby-sdk/models/payment_connector'
require 'wallee-ruby-sdk/models/payment_connector_configuration'
require 'wallee-ruby-sdk/models/payment_connector_feature'
require 'wallee-ruby-sdk/models/payment_contract'
require 'wallee-ruby-sdk/models/payment_contract_state'
require 'wallee-ruby-sdk/models/payment_contract_type'
require 'wallee-ruby-sdk/models/payment_link'
require 'wallee-ruby-sdk/models/payment_link_active'
require 'wallee-ruby-sdk/models/payment_link_create'
require 'wallee-ruby-sdk/models/payment_link_protection_mode'
require 'wallee-ruby-sdk/models/payment_link_update'
require 'wallee-ruby-sdk/models/payment_method'
require 'wallee-ruby-sdk/models/payment_method_brand'
require 'wallee-ruby-sdk/models/payment_method_configuration'
require 'wallee-ruby-sdk/models/payment_primary_risk_taker'
require 'wallee-ruby-sdk/models/payment_processor'
require 'wallee-ruby-sdk/models/payment_processor_configuration'
require 'wallee-ruby-sdk/models/permission'
require 'wallee-ruby-sdk/models/persistable_currency_amount'
require 'wallee-ruby-sdk/models/persistable_currency_amount_update'
require 'wallee-ruby-sdk/models/product_fee_type'
require 'wallee-ruby-sdk/models/product_metered_fee'
require 'wallee-ruby-sdk/models/product_metered_fee_update'
require 'wallee-ruby-sdk/models/product_metered_tier_fee'
require 'wallee-ruby-sdk/models/product_metered_tier_fee_update'
require 'wallee-ruby-sdk/models/product_metered_tier_pricing'
require 'wallee-ruby-sdk/models/product_period_fee'
require 'wallee-ruby-sdk/models/product_period_fee_update'
require 'wallee-ruby-sdk/models/product_setup_fee'
require 'wallee-ruby-sdk/models/product_setup_fee_update'
require 'wallee-ruby-sdk/models/refund'
require 'wallee-ruby-sdk/models/refund_create'
require 'wallee-ruby-sdk/models/refund_state'
require 'wallee-ruby-sdk/models/refund_type'
require 'wallee-ruby-sdk/models/rendered_document'
require 'wallee-ruby-sdk/models/resource_path'
require 'wallee-ruby-sdk/models/resource_state'
require 'wallee-ruby-sdk/models/rest_address_format'
require 'wallee-ruby-sdk/models/rest_address_format_field'
require 'wallee-ruby-sdk/models/rest_country'
require 'wallee-ruby-sdk/models/rest_country_state'
require 'wallee-ruby-sdk/models/rest_currency'
require 'wallee-ruby-sdk/models/rest_language'
require 'wallee-ruby-sdk/models/role'
require 'wallee-ruby-sdk/models/scope'
require 'wallee-ruby-sdk/models/server_error'
require 'wallee-ruby-sdk/models/space'
require 'wallee-ruby-sdk/models/space_address'
require 'wallee-ruby-sdk/models/space_address_create'
require 'wallee-ruby-sdk/models/space_create'
require 'wallee-ruby-sdk/models/space_reference'
require 'wallee-ruby-sdk/models/space_reference_state'
require 'wallee-ruby-sdk/models/space_update'
require 'wallee-ruby-sdk/models/space_view'
require 'wallee-ruby-sdk/models/static_value'
require 'wallee-ruby-sdk/models/subscriber'
require 'wallee-ruby-sdk/models/subscriber_active'
require 'wallee-ruby-sdk/models/subscriber_create'
require 'wallee-ruby-sdk/models/subscriber_update'
require 'wallee-ruby-sdk/models/subscription'
require 'wallee-ruby-sdk/models/subscription_affiliate'
require 'wallee-ruby-sdk/models/subscription_affiliate_create'
require 'wallee-ruby-sdk/models/subscription_affiliate_deleted'
require 'wallee-ruby-sdk/models/subscription_affiliate_deleting'
require 'wallee-ruby-sdk/models/subscription_affiliate_inactive'
require 'wallee-ruby-sdk/models/subscription_affiliate_update'
require 'wallee-ruby-sdk/models/subscription_change_request'
require 'wallee-ruby-sdk/models/subscription_charge'
require 'wallee-ruby-sdk/models/subscription_charge_create'
require 'wallee-ruby-sdk/models/subscription_charge_processing_type'
require 'wallee-ruby-sdk/models/subscription_charge_state'
require 'wallee-ruby-sdk/models/subscription_charge_type'
require 'wallee-ruby-sdk/models/subscription_create_request'
require 'wallee-ruby-sdk/models/subscription_ledger_entry'
require 'wallee-ruby-sdk/models/subscription_ledger_entry_create'
require 'wallee-ruby-sdk/models/subscription_ledger_entry_state'
require 'wallee-ruby-sdk/models/subscription_metric'
require 'wallee-ruby-sdk/models/subscription_metric_active'
require 'wallee-ruby-sdk/models/subscription_metric_create'
require 'wallee-ruby-sdk/models/subscription_metric_type'
require 'wallee-ruby-sdk/models/subscription_metric_update'
require 'wallee-ruby-sdk/models/subscription_metric_usage_report'
require 'wallee-ruby-sdk/models/subscription_metric_usage_report_create'
require 'wallee-ruby-sdk/models/subscription_pending'
require 'wallee-ruby-sdk/models/subscription_period_bill'
require 'wallee-ruby-sdk/models/subscription_period_bill_state'
require 'wallee-ruby-sdk/models/subscription_product'
require 'wallee-ruby-sdk/models/subscription_product_active'
require 'wallee-ruby-sdk/models/subscription_product_component'
require 'wallee-ruby-sdk/models/subscription_product_component_group'
require 'wallee-ruby-sdk/models/subscription_product_component_group_update'
require 'wallee-ruby-sdk/models/subscription_product_component_reference'
require 'wallee-ruby-sdk/models/subscription_product_component_reference_state'
require 'wallee-ruby-sdk/models/subscription_product_component_update'
require 'wallee-ruby-sdk/models/subscription_product_create'
require 'wallee-ruby-sdk/models/subscription_product_retirement'
require 'wallee-ruby-sdk/models/subscription_product_retirement_create'
require 'wallee-ruby-sdk/models/subscription_product_state'
require 'wallee-ruby-sdk/models/subscription_product_version'
require 'wallee-ruby-sdk/models/subscription_product_version_pending'
require 'wallee-ruby-sdk/models/subscription_product_version_retirement'
require 'wallee-ruby-sdk/models/subscription_product_version_retirement_create'
require 'wallee-ruby-sdk/models/subscription_product_version_state'
require 'wallee-ruby-sdk/models/subscription_state'
require 'wallee-ruby-sdk/models/subscription_suspension'
require 'wallee-ruby-sdk/models/subscription_suspension_action'
require 'wallee-ruby-sdk/models/subscription_suspension_create'
require 'wallee-ruby-sdk/models/subscription_suspension_reason'
require 'wallee-ruby-sdk/models/subscription_suspension_running'
require 'wallee-ruby-sdk/models/subscription_suspension_state'
require 'wallee-ruby-sdk/models/subscription_update'
require 'wallee-ruby-sdk/models/subscription_version'
require 'wallee-ruby-sdk/models/subscription_version_state'
require 'wallee-ruby-sdk/models/tax'
require 'wallee-ruby-sdk/models/tax_class'
require 'wallee-ruby-sdk/models/tax_create'
require 'wallee-ruby-sdk/models/tenant_database'
require 'wallee-ruby-sdk/models/token'
require 'wallee-ruby-sdk/models/token_create'
require 'wallee-ruby-sdk/models/token_update'
require 'wallee-ruby-sdk/models/token_version'
require 'wallee-ruby-sdk/models/token_version_state'
require 'wallee-ruby-sdk/models/token_version_type'
require 'wallee-ruby-sdk/models/tokenizationn_mode'
require 'wallee-ruby-sdk/models/transaction'
require 'wallee-ruby-sdk/models/transaction_aware_entity'
require 'wallee-ruby-sdk/models/transaction_completion'
require 'wallee-ruby-sdk/models/transaction_completion_mode'
require 'wallee-ruby-sdk/models/transaction_completion_state'
require 'wallee-ruby-sdk/models/transaction_create'
require 'wallee-ruby-sdk/models/transaction_environment_selection_strategy'
require 'wallee-ruby-sdk/models/transaction_group'
require 'wallee-ruby-sdk/models/transaction_group_state'
require 'wallee-ruby-sdk/models/transaction_invoice'
require 'wallee-ruby-sdk/models/transaction_invoice_replacement'
require 'wallee-ruby-sdk/models/transaction_invoice_state'
require 'wallee-ruby-sdk/models/transaction_line_item_update_request'
require 'wallee-ruby-sdk/models/transaction_line_item_version'
require 'wallee-ruby-sdk/models/transaction_pending'
require 'wallee-ruby-sdk/models/transaction_state'
require 'wallee-ruby-sdk/models/transaction_user_interface_type'
require 'wallee-ruby-sdk/models/transaction_void'
require 'wallee-ruby-sdk/models/transaction_void_mode'
require 'wallee-ruby-sdk/models/transaction_void_state'
require 'wallee-ruby-sdk/models/unencrypted_card_data'
require 'wallee-ruby-sdk/models/unencrypted_card_data_create'
require 'wallee-ruby-sdk/models/user'
require 'wallee-ruby-sdk/models/user_account_role'
require 'wallee-ruby-sdk/models/user_space_role'
require 'wallee-ruby-sdk/models/user_type'
require 'wallee-ruby-sdk/models/webhook_identity'
require 'wallee-ruby-sdk/models/webhook_listener'
require 'wallee-ruby-sdk/models/webhook_listener_create'
require 'wallee-ruby-sdk/models/webhook_listener_entity'
require 'wallee-ruby-sdk/models/webhook_listener_update'
require 'wallee-ruby-sdk/models/webhook_url'
require 'wallee-ruby-sdk/models/webhook_url_create'
require 'wallee-ruby-sdk/models/webhook_url_update'

# APIs
require 'wallee-ruby-sdk/services/account_service_api'
require 'wallee-ruby-sdk/services/application_user_service_api'
require 'wallee-ruby-sdk/services/card_processing_service_api'
require 'wallee-ruby-sdk/services/charge_attempt_service_api'
require 'wallee-ruby-sdk/services/charge_flow_level_service_api'
require 'wallee-ruby-sdk/services/charge_flow_service_api'
require 'wallee-ruby-sdk/services/condition_type_service_api'
require 'wallee-ruby-sdk/services/country_service_api'
require 'wallee-ruby-sdk/services/country_state_service_api'
require 'wallee-ruby-sdk/services/currency_service_api'
require 'wallee-ruby-sdk/services/debt_collection_case_service_api'
require 'wallee-ruby-sdk/services/debt_collector_configuration_service_api'
require 'wallee-ruby-sdk/services/debt_collector_service_api'
require 'wallee-ruby-sdk/services/delivery_indication_service_api'
require 'wallee-ruby-sdk/services/document_template_service_api'
require 'wallee-ruby-sdk/services/document_template_type_service_api'
require 'wallee-ruby-sdk/services/human_user_service_api'
require 'wallee-ruby-sdk/services/installment_payment_service_api'
require 'wallee-ruby-sdk/services/installment_payment_slice_service_api'
require 'wallee-ruby-sdk/services/installment_plan_calculation_service_api'
require 'wallee-ruby-sdk/services/installment_plan_configuration_service_api'
require 'wallee-ruby-sdk/services/installment_plan_slice_configuration_service_api'
require 'wallee-ruby-sdk/services/label_description_group_service_api'
require 'wallee-ruby-sdk/services/label_description_service_api'
require 'wallee-ruby-sdk/services/language_service_api'
require 'wallee-ruby-sdk/services/legal_organization_form_service_api'
require 'wallee-ruby-sdk/services/manual_task_service_api'
require 'wallee-ruby-sdk/services/mertic_usage_service_api'
require 'wallee-ruby-sdk/services/payment_connector_configuration_service_api'
require 'wallee-ruby-sdk/services/payment_connector_service_api'
require 'wallee-ruby-sdk/services/payment_link_service_api'
require 'wallee-ruby-sdk/services/payment_method_configuration_service_api'
require 'wallee-ruby-sdk/services/payment_method_service_api'
require 'wallee-ruby-sdk/services/payment_processor_configuration_service_api'
require 'wallee-ruby-sdk/services/payment_processor_service_api'
require 'wallee-ruby-sdk/services/permission_service_api'
require 'wallee-ruby-sdk/services/refund_service_api'
require 'wallee-ruby-sdk/services/space_service_api'
require 'wallee-ruby-sdk/services/static_value_service_api'
require 'wallee-ruby-sdk/services/subscriber_service_api'
require 'wallee-ruby-sdk/services/subscription_affiliate_service_api'
require 'wallee-ruby-sdk/services/subscription_charge_service_api'
require 'wallee-ruby-sdk/services/subscription_ledger_entry_service_api'
require 'wallee-ruby-sdk/services/subscription_metric_service_api'
require 'wallee-ruby-sdk/services/subscription_metric_usage_service_api'
require 'wallee-ruby-sdk/services/subscription_period_bill_service_api'
require 'wallee-ruby-sdk/services/subscription_product_component_group_service_api'
require 'wallee-ruby-sdk/services/subscription_product_component_service_api'
require 'wallee-ruby-sdk/services/subscription_product_fee_tier_service_api'
require 'wallee-ruby-sdk/services/subscription_product_metered_fee_service_api'
require 'wallee-ruby-sdk/services/subscription_product_period_fee_service_api'
require 'wallee-ruby-sdk/services/subscription_product_retirement_service_api'
require 'wallee-ruby-sdk/services/subscription_product_service_api'
require 'wallee-ruby-sdk/services/subscription_product_setup_fee_service_api'
require 'wallee-ruby-sdk/services/subscription_product_version_retirement_service_api'
require 'wallee-ruby-sdk/services/subscription_product_version_service_api'
require 'wallee-ruby-sdk/services/subscription_service_api'
require 'wallee-ruby-sdk/services/subscription_suspension_service_api'
require 'wallee-ruby-sdk/services/subscription_version_service_api'
require 'wallee-ruby-sdk/services/token_service_api'
require 'wallee-ruby-sdk/services/token_version_service_api'
require 'wallee-ruby-sdk/services/transaction_completion_service_api'
require 'wallee-ruby-sdk/services/transaction_invoice_service_api'
require 'wallee-ruby-sdk/services/transaction_service_api'
require 'wallee-ruby-sdk/services/transaction_void_service_api'
require 'wallee-ruby-sdk/services/user_account_role_service_api'
require 'wallee-ruby-sdk/services/user_space_role_service_api'
require 'wallee-ruby-sdk/services/webhook_listener_service_api'
require 'wallee-ruby-sdk/services/webhook_url_service_api'

module Wallee
  class << self
    # Customize default settings for the SDK using block.
    #   Wallee.configure do |config|
    #     config.user_id = "xxx"
    #     config.authentication_key = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
