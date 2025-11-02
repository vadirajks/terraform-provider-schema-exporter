resource "aws_opensearch_outbound_connection" "name" {
  connection_alias = string (Required)
  accept_connection = bool (Optional)
  connection_mode = string (Optional, Computed)
  connection_status = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  connection_properties block "list" (Optional) {
    endpoint = string (Computed)

    cross_cluster_search block "list" (Optional) {
      skip_unavailable = string (Optional)
    }
  }

  local_domain_info block "list" (Required) {
    domain_name = string (Required)
    owner_id = string (Required)
    region = string (Required)
  }

  remote_domain_info block "list" (Required) {
    domain_name = string (Required)
    owner_id = string (Required)
    region = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
