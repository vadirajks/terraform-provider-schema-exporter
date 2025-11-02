resource "azurerm_cognitive_account" "name" {
  kind = string (Required)
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  sku_name = string (Required)
  custom_question_answering_search_service_id = string (Optional)
  custom_question_answering_search_service_key = string (Optional)
  custom_subdomain_name = string (Optional)
  dynamic_throttling_enabled = bool (Optional)
  endpoint = string (Computed)
  fqdns = ['list', 'string'] (Optional)
  id = string (Optional, Computed)
  local_auth_enabled = bool (Optional)
  metrics_advisor_aad_client_id = string (Optional)
  metrics_advisor_aad_tenant_id = string (Optional)
  metrics_advisor_super_user_name = string (Optional)
  metrics_advisor_website_name = string (Optional)
  outbound_network_access_restricted = bool (Optional)
  primary_access_key = string (Computed)
  project_management_enabled = bool (Optional)
  public_network_access_enabled = bool (Optional)
  qna_runtime_endpoint = string (Optional)
  secondary_access_key = string (Computed)
  tags = ['map', 'string'] (Optional)

  customer_managed_key block "list" (Optional) {
    key_vault_key_id = string (Required)
    identity_client_id = string (Optional)
  }

  identity block "list" (Optional) {
    type = string (Required)
    identity_ids = ['set', 'string'] (Optional)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  network_acls block "list" (Optional) {
    default_action = string (Required)
    bypass = string (Optional)
    ip_rules = ['set', 'string'] (Optional)

    virtual_network_rules block "set" (Optional) {
      subnet_id = string (Required)
      ignore_missing_vnet_service_endpoint = bool (Optional)
    }
  }

  network_injection block "list" (Optional) {
    scenario = string (Required)
    subnet_id = string (Required)
  }

  storage block "list" (Optional) {
    storage_account_id = string (Required)
    identity_client_id = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
