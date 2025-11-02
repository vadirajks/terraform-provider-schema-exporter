resource "azurerm_media_live_event" "name" {
  location = string (Required)
  media_services_account_name = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  auto_start_enabled = bool (Optional)
  description = string (Optional)
  hostname_prefix = string (Optional)
  id = string (Optional, Computed)
  stream_options = ['list', 'string'] (Optional)
  tags = ['map', 'string'] (Optional)
  transcription_languages = ['list', 'string'] (Optional)
  use_static_hostname = bool (Optional)

  cross_site_access_policy block "list"  (Optional){
    client_access_policy = string (Optional)
    cross_domain_policy = string (Optional)
  }

  encoding block "list"  (Optional){
    key_frame_interval = string (Optional)
    preset_name = string (Optional)
    stretch_mode = string (Optional)
    type = string (Optional)
  }

  input block "list"  (Required){
    access_token = string (Optional, Computed)
    endpoint = ['list', ['object', {'protocol': 'string', 'url': 'string'}]] (Computed)
    key_frame_interval_duration = string (Optional)
    streaming_protocol = string (Optional)

    ip_access_control_allow block "list"  (Optional){
      address = string (Optional)
      name = string (Optional)
      subnet_prefix_length = number (Optional)
    }
  }

  preview block "list"  (Optional){
    alternative_media_id = string (Optional)
    endpoint = ['list', ['object', {'protocol': 'string', 'url': 'string'}]] (Computed)
    preview_locator = string (Optional, Computed)
    streaming_policy_name = string (Optional, Computed)

    ip_access_control_allow block "list"  (Optional){
      address = string (Optional)
      name = string (Optional)
      subnet_prefix_length = number (Optional)
    }
  }

  timeouts block "single"  (Optional){
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
