resource "azurerm_media_asset" "name" {
  media_services_account_name = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  alternate_id = string (Optional)
  container = string (Optional, Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  storage_account_name = string (Optional, Computed)

  timeouts block "single"  (Optional){
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
