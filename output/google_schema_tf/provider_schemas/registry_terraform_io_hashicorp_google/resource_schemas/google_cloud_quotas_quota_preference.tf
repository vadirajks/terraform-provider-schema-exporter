resource "google_cloud_quotas_quota_preference" "name" {
  contact_email = string (Optional)
  create_time = string (Computed)
  dimensions = ['map', 'string'] (Optional, Computed)
  etag = string (Computed)
  id = string (Optional, Computed)
  ignore_safety_checks = string (Optional)
  justification = string (Optional)
  name = string (Optional, Computed)
  parent = string (Optional, Computed)
  quota_id = string (Optional, Computed)
  reconciling = bool (Computed)
  service = string (Optional, Computed)
  update_time = string (Computed)

  quota_config block "list" (Required) {
    preferred_value = string (Required)
    annotations = ['map', 'string'] (Optional)
    granted_value = string (Computed)
    request_origin = string (Computed)
    state_detail = string (Computed)
    trace_id = string (Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
