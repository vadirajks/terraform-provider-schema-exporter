resource "google_discovery_engine_cmek_config" "name" {
  kms_key = string (Required)
  location = string (Required)
  cmek_config_id = string (Optional)
  id = string (Optional, Computed)
  is_default = bool (Computed)
  kms_key_version = string (Computed)
  last_rotation_timestamp_micros = number (Computed)
  name = string (Computed)
  notebooklm_state = string (Computed)
  project = string (Optional, Computed)
  set_default = bool (Optional)
  state = string (Computed)

  single_region_keys block "list" (Optional) {
    kms_key = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
