resource "google_network_connectivity_spoke" "name" {
  hub = string (Required)
  location = string (Required)
  name = string (Required)
  create_time = string (Computed)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  group = string (Optional, Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  project = string (Optional, Computed)
  reasons = ['list', ['object', {'code': 'string', 'message': 'string', 'user_details': 'string'}]] (Computed)
  state = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)
  unique_id = string (Computed)
  update_time = string (Computed)

  linked_interconnect_attachments block "list" (Optional) {
    site_to_site_data_transfer = bool (Required)
    uris = ['list', 'string'] (Required)
    include_import_ranges = ['list', 'string'] (Optional)
  }

  linked_producer_vpc_network block "list" (Optional) {
    network = string (Required)
    peering = string (Required)
    exclude_export_ranges = ['list', 'string'] (Optional)
    include_export_ranges = ['list', 'string'] (Optional)
    producer_network = string (Computed)
  }

  linked_router_appliance_instances block "list" (Optional) {
    site_to_site_data_transfer = bool (Required)
    include_import_ranges = ['list', 'string'] (Optional)

    instances block "list" (Required) {
      ip_address = string (Required)
      virtual_machine = string (Required)
    }
  }

  linked_vpc_network block "list" (Optional) {
    uri = string (Required)
    exclude_export_ranges = ['list', 'string'] (Optional)
    include_export_ranges = ['list', 'string'] (Optional)
  }

  linked_vpn_tunnels block "list" (Optional) {
    site_to_site_data_transfer = bool (Required)
    uris = ['list', 'string'] (Required)
    include_import_ranges = ['list', 'string'] (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
