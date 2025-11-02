resource "azurerm_video_analyzer" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  identity block "list"  (Required){
    identity_ids = ['set', 'string'] (Required)
    type = string (Required)
  }

  storage_account block "list"  (Required){
    id = string (Required)
    user_assigned_identity_id = string (Required)
  }

  timeouts block "single"  (Optional){
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
