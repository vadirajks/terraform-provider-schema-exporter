resource "google_compute_interconnect" "name" {
  interconnect_type = string (Required)
  link_type = string (Required)
  location = string (Required)
  name = string (Required)
  requested_link_count = number (Required)
  admin_enabled = bool (Optional)
  available_features = ['list', 'string'] (Computed)
  circuit_infos = ['list', ['object', {'customer_demarc_id': 'string', 'google_circuit_id': 'string', 'google_demarc_id': 'string'}]] (Computed)
  creation_timestamp = string (Computed)
  customer_name = string (Optional)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  expected_outages = ['list', ['object', {'affected_circuits': ['list', 'string'], 'description': 'string', 'end_time': 'string', 'issue_type': 'string', 'name': 'string', 'source': 'string', 'start_time': 'string', 'state': 'string'}]] (Computed)
  google_ip_address = string (Computed)
  google_reference_id = string (Computed)
  id = string (Optional, Computed)
  interconnect_attachments = ['list', 'string'] (Computed)
  interconnect_groups = ['set', 'string'] (Computed)
  label_fingerprint = string (Computed)
  labels = ['map', 'string'] (Optional)
  macsec_enabled = bool (Optional)
  noc_contact_email = string (Optional)
  operational_status = string (Computed)
  peer_ip_address = string (Computed)
  project = string (Optional, Computed)
  provisioned_link_count = number (Computed)
  remote_location = string (Optional)
  requested_features = ['list', 'string'] (Optional)
  satisfies_pzs = bool (Computed)
  state = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)

  macsec block "list" (Optional) {
    fail_open = bool (Optional)

    pre_shared_keys block "list" (Required) {
      name = string (Required)
      fail_open = bool (Optional)
      start_time = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
