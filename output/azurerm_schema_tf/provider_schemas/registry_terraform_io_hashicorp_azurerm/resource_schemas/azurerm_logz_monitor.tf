resource "azurerm_logz_monitor" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  company_name = string (Optional)
  enabled = bool (Optional)
  enterprise_app_id = string (Optional)
  id = string (Optional, Computed)
  logz_organization_id = string (Computed)
  single_sign_on_url = string (Computed)
  tags = ['map', 'string'] (Optional)

  plan block "list"  (Required){
    billing_cycle = string (Required)
    effective_date = string (Required)
    usage_type = string (Required)
    plan_id = string (Optional)
  }

  timeouts block "single"  (Optional){
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }

  user block "list"  (Required){
    email = string (Required)
    first_name = string (Required)
    last_name = string (Required)
    phone_number = string (Required)
  }
}
