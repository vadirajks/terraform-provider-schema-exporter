resource "google_apigee_environment" "name" {
  name = string (Required)
  org_id = string (Required)
  api_proxy_type = string (Optional, Computed)
  deployment_type = string (Optional, Computed)
  description = string (Optional)
  display_name = string (Optional)
  forward_proxy_uri = string (Optional)
  id = string (Optional, Computed)
  type = string (Optional, Computed)

  client_ip_resolution_config block "list" (Optional) {

    header_index_algorithm block "list" (Optional) {
      ip_header_index = number (Required)
      ip_header_name = string (Required)
    }
  }

  node_config block "list" (Optional) {
    current_aggregate_node_count = string (Computed)
    max_node_count = string (Optional)
    min_node_count = string (Optional)
  }

  properties block "list" (Optional) {

    property block "list" (Optional) {
      name = string (Optional)
      value = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
