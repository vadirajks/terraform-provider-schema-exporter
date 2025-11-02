resource "google_netapp_volume" "name" {
  capacity_gib = string (Required)
  location = string (Required)
  name = string (Required)
  protocols = ['list', 'string'] (Required)
  share_name = string (Required)
  storage_pool = string (Required)
  active_directory = string (Computed)
  cold_tier_size_gib = string (Computed)
  create_time = string (Computed)
  deletion_policy = string (Optional)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  encryption_type = string (Computed)
  has_replication = bool (Computed)
  hot_tier_size_used_gib = string (Computed)
  id = string (Optional, Computed)
  kerberos_enabled = bool (Optional)
  kms_config = string (Computed)
  labels = ['map', 'string'] (Optional)
  large_capacity = bool (Optional)
  ldap_enabled = bool (Computed)
  mount_options = ['list', ['object', {'export': 'string', 'export_full': 'string', 'instructions': 'string', 'ip_address': 'string', 'protocol': 'string'}]] (Computed)
  multiple_endpoints = bool (Optional)
  network = string (Computed)
  project = string (Optional, Computed)
  psa_range = string (Computed)
  replica_zone = string (Computed)
  restricted_actions = ['list', 'string'] (Optional)
  security_style = string (Optional, Computed)
  service_level = string (Computed)
  smb_settings = ['list', 'string'] (Optional, Computed)
  snapshot_directory = bool (Optional)
  state = string (Computed)
  state_details = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)
  throughput_mibps = number (Optional, Computed)
  unix_permissions = string (Optional, Computed)
  used_gib = string (Computed)
  zone = string (Computed)

  backup_config block "list" (Optional) {
    backup_policies = ['list', 'string'] (Optional)
    backup_vault = string (Optional)
    scheduled_backup_enabled = bool (Optional)
  }

  export_policy block "list" (Optional) {

    rules block "list" (Required) {
      access_type = string (Optional)
      allowed_clients = string (Optional)
      anon_uid = number (Optional)
      has_root_access = string (Optional, Computed)
      kerberos5_read_only = bool (Optional)
      kerberos5_read_write = bool (Optional)
      kerberos5i_read_only = bool (Optional)
      kerberos5i_read_write = bool (Optional)
      kerberos5p_read_only = bool (Optional)
      kerberos5p_read_write = bool (Optional)
      nfsv3 = bool (Optional)
      nfsv4 = bool (Optional)
      squash_mode = string (Optional, Computed)
    }
  }

  hybrid_replication_parameters block "list" (Optional) {
    cluster_location = string (Optional)
    description = string (Optional)
    hybrid_replication_type = string (Optional)
    labels = ['map', 'string'] (Optional)
    large_volume_constituent_count = number (Optional)
    peer_cluster_name = string (Optional)
    peer_ip_addresses = ['list', 'string'] (Optional)
    peer_svm_name = string (Optional)
    peer_volume_name = string (Optional)
    replication = string (Optional)
    replication_schedule = string (Optional)
  }

  restore_parameters block "list" (Optional) {
    source_backup = string (Optional)
    source_snapshot = string (Optional)
  }

  snapshot_policy block "list" (Optional) {
    enabled = bool (Optional)

    daily_schedule block "list" (Optional) {
      snapshots_to_keep = number (Required)
      hour = number (Optional)
      minute = number (Optional)
    }

    hourly_schedule block "list" (Optional) {
      snapshots_to_keep = number (Required)
      minute = number (Optional)
    }

    monthly_schedule block "list" (Optional) {
      snapshots_to_keep = number (Required)
      days_of_month = string (Optional)
      hour = number (Optional)
      minute = number (Optional)
    }

    weekly_schedule block "list" (Optional) {
      snapshots_to_keep = number (Required)
      day = string (Optional)
      hour = number (Optional)
      minute = number (Optional)
    }
  }

  tiering_policy block "list" (Optional) {
    cooling_threshold_days = number (Optional)
    hot_tier_bypass_mode_enabled = bool (Optional)
    tier_action = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
