resource "azurerm_lab_service_user" "name" {
  email = string (Required)
  lab_id = string (Required)
  name = string (Required)
  additional_usage_quota = string (Optional)
  id = string (Optional, Computed)

  timeouts block "single"  (Optional){
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
