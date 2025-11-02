resource "azurerm_media_streaming_locator" "name" {
  asset_name = string (Required)
  media_services_account_name = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  streaming_policy_name = string (Required)
  alternative_media_id = string (Optional)
  default_content_key_policy_name = string (Optional)
  end_time = string (Optional, Computed)
  filter_names = ['list', 'string'] (Optional)
  id = string (Optional, Computed)
  start_time = string (Optional)
  streaming_locator_id = string (Optional, Computed)

  content_key block "list"  (Optional){
    content_key_id = string (Optional)
    label_reference_in_streaming_policy = string (Optional)
    policy_name = string (Optional)
    type = string (Optional)
    value = string (Optional)
  }

  timeouts block "single"  (Optional){
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
