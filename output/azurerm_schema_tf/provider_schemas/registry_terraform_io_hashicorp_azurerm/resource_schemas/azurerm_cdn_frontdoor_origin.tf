resource "azurerm_cdn_frontdoor_origin" "name" {
  cdn_frontdoor_origin_group_id = string (Required)
  certificate_name_check_enabled = bool (Required)
  host_name = string (Required)
  name = string (Required)
  enabled = bool (Optional)
  http_port = number (Optional)
  https_port = number (Optional)
  id = string (Optional, Computed)
  origin_host_header = string (Optional)
  priority = number (Optional)
  weight = number (Optional)

  private_link block "list" (Optional) {
    location = string (Required)
    private_link_target_id = string (Required)
    request_message = string (Optional)
    target_type = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
