resource "azurerm_media_streaming_endpoint" "name" {
  location = string (Required)
  media_services_account_name = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  scale_units = number (Required)
  auto_start_enabled = bool (Optional, Computed)
  cdn_enabled = bool (Optional)
  cdn_profile = string (Optional, Computed)
  cdn_provider = string (Optional, Computed)
  custom_host_names = ['set', 'string'] (Optional)
  description = string (Optional)
  host_name = string (Computed)
  id = string (Optional, Computed)
  max_cache_age_seconds = number (Optional)
  sku = ['list', ['object', {'capacity': 'number', 'name': 'string'}]] (Computed)
  tags = ['map', 'string'] (Optional)

  access_control block "list"  (Optional){

    akamai_signature_header_authentication_key block "list"  (Optional){
      base64_key = string (Optional)
      expiration = string (Optional)
      identifier = string (Optional)
    }

    ip_allow block "list"  (Optional){
      address = string (Optional)
      name = string (Optional)
      subnet_prefix_length = number (Optional)
    }
  }

  cross_site_access_policy block "list"  (Optional){
    client_access_policy = string (Optional, Computed)
    cross_domain_policy = string (Optional, Computed)
  }

  timeouts block "single"  (Optional){
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
