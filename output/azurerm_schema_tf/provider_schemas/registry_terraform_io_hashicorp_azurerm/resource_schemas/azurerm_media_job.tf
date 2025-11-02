resource "azurerm_media_job" "name" {
  media_services_account_name = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  transform_name = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)
  priority = string (Optional)

  input_asset block "list"  (Required){
    name = string (Required)
    label = string (Optional)
  }

  output_asset block "list"  (Required){
    name = string (Required)
    label = string (Optional)
  }

  timeouts block "single"  (Optional){
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
