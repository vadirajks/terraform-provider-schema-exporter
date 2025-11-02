resource "google_compute_subnetwork" "name" {
  name = string (Required)
  network = string (Required)
  creation_timestamp = string (Computed)
  description = string (Optional)
  external_ipv6_prefix = string (Optional, Computed)
  fingerprint = string (Computed)
  gateway_address = string (Computed)
  id = string (Optional, Computed)
  internal_ipv6_prefix = string (Computed)
  ip_cidr_range = string (Optional, Computed)
  ip_collection = string (Optional)
  ipv6_access_type = string (Optional)
  ipv6_cidr_range = string (Computed)
  ipv6_gce_endpoint = string (Computed)
  private_ip_google_access = bool (Optional, Computed)
  private_ipv6_google_access = string (Optional, Computed)
  project = string (Optional, Computed)
  purpose = string (Optional, Computed)
  region = string (Optional, Computed)
  reserved_internal_range = string (Optional)
  role = string (Optional)
  self_link = string (Computed)
  send_secondary_ip_range_if_empty = bool (Optional)
  stack_type = string (Optional, Computed)
  state = string (Computed)
  subnetwork_id = number (Computed)

  log_config block "list" (Optional) {
    aggregation_interval = string (Optional)
    filter_expr = string (Optional)
    flow_sampling = number (Optional)
    metadata = string (Optional)
    metadata_fields = ['set', 'string'] (Optional)
  }

  params block "list" (Optional) {
    resource_manager_tags = ['map', 'string'] (Optional)
  }

  secondary_ip_range block "list" (Optional) {
    range_name = string (Required)
    ip_cidr_range = string (Optional, Computed)
    reserved_internal_range = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
