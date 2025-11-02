resource "google_netapp_volume_replication" "name" {
  location = string (Required)
  name = string (Required)
  replication_schedule = string (Required)
  volume_name = string (Required)
  create_time = string (Computed)
  delete_destination_volume = bool (Optional)
  description = string (Optional)
  destination_volume = string (Computed)
  effective_labels = ['map', 'string'] (Computed)
  force_stopping = bool (Optional)
  healthy = bool (Computed)
  hybrid_peering_details = ['list', ['object', {'command': 'string', 'command_expiry_time': 'string', 'passphrase': 'string', 'peer_cluster_name': 'string', 'peer_svm_name': 'string', 'peer_volume_name': 'string', 'subnet_ip': 'string'}]] (Computed)
  hybrid_replication_type = string (Computed)
  hybrid_replication_user_commands = ['list', ['object', {'commands': ['list', 'string']}]] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  mirror_state = string (Computed)
  project = string (Optional, Computed)
  replication_enabled = bool (Optional)
  role = string (Computed)
  source_volume = string (Computed)
  state = string (Computed)
  state_details = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)
  transfer_stats = ['list', ['object', {'lag_duration': 'string', 'last_transfer_bytes': 'string', 'last_transfer_duration': 'string', 'last_transfer_end_time': 'string', 'last_transfer_error': 'string', 'total_transfer_duration': 'string', 'transfer_bytes': 'string', 'update_time': 'string'}]] (Computed)
  wait_for_mirror = bool (Optional)

  destination_volume_parameters block "list" (Optional) {
    storage_pool = string (Required)
    description = string (Optional)
    share_name = string (Optional, Computed)
    volume_id = string (Optional, Computed)

    tiering_policy block "list" (Optional) {
      cooling_threshold_days = number (Optional)
      tier_action = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
