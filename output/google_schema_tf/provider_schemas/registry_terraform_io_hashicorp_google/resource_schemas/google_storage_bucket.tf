resource "google_storage_bucket" "name" {
  location = string (Required)
  name = string (Required)
  default_event_based_hold = bool (Optional)
  effective_labels = ['map', 'string'] (Computed)
  enable_object_retention = bool (Optional)
  force_destroy = bool (Optional)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  project = string (Optional, Computed)
  project_number = number (Computed)
  public_access_prevention = string (Optional, Computed)
  requester_pays = bool (Optional)
  rpo = string (Optional, Computed)
  self_link = string (Computed)
  storage_class = string (Optional)
  terraform_labels = ['map', 'string'] (Computed)
  time_created = string (Computed)
  uniform_bucket_level_access = bool (Optional, Computed)
  updated = string (Computed)
  url = string (Computed)

  autoclass block "list" (Optional) {
    enabled = bool (Required)
    terminal_storage_class = string (Optional, Computed)
  }

  cors block "list" (Optional) {
    max_age_seconds = number (Optional)
    method = ['list', 'string'] (Optional)
    origin = ['list', 'string'] (Optional)
    response_header = ['list', 'string'] (Optional)
  }

  custom_placement_config block "list" (Optional) {
    data_locations = ['set', 'string'] (Required)
  }

  encryption block "list" (Optional) {
    default_kms_key_name = string (Required)
  }

  hierarchical_namespace block "list" (Optional) {
    enabled = bool (Required)
  }

  ip_filter block "list" (Optional) {
    mode = string (Required)
    allow_all_service_agent_access = bool (Optional)
    allow_cross_org_vpcs = bool (Optional)

    public_network_source block "list" (Optional) {
      allowed_ip_cidr_ranges = ['list', 'string'] (Required)
    }

    vpc_network_sources block "list" (Optional) {
      allowed_ip_cidr_ranges = ['list', 'string'] (Required)
      network = string (Required)
    }
  }

  lifecycle_rule block "list" (Optional) {

    action block "set" (Required) {
      type = string (Required)
      storage_class = string (Optional)
    }

    condition block "set" (Required) {
      age = number (Optional)
      created_before = string (Optional)
      custom_time_before = string (Optional)
      days_since_custom_time = number (Optional)
      days_since_noncurrent_time = number (Optional)
      matches_prefix = ['list', 'string'] (Optional)
      matches_storage_class = ['list', 'string'] (Optional)
      matches_suffix = ['list', 'string'] (Optional)
      noncurrent_time_before = string (Optional)
      num_newer_versions = number (Optional)
      send_age_if_zero = bool (Optional)
      send_days_since_custom_time_if_zero = bool (Optional)
      send_days_since_noncurrent_time_if_zero = bool (Optional)
      send_num_newer_versions_if_zero = bool (Optional)
      with_state = string (Optional, Computed)
    }
  }

  logging block "list" (Optional) {
    log_bucket = string (Required)
    log_object_prefix = string (Optional, Computed)
  }

  retention_policy block "list" (Optional) {
    retention_period = string (Required)
    is_locked = bool (Optional)
  }

  soft_delete_policy block "list" (Optional) {
    effective_time = string (Computed)
    retention_duration_seconds = number (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }

  versioning block "list" (Optional) {
    enabled = bool (Required)
  }

  website block "list" (Optional) {
    main_page_suffix = string (Optional)
    not_found_page = string (Optional)
  }
}
