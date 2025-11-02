data "google_cloud_quotas_quota_infos" "name" {
  parent = string (Required)
  service = string (Required)
  id = string (Optional, Computed)
  quota_infos = ['list', ['object', {'container_type': 'string', 'dimensions': ['list', 'string'], 'dimensions_infos': ['list', ['object', {'applicable_locations': ['list', 'string'], 'details': ['list', ['object', {'value': 'string'}]], 'dimensions': ['map', 'string']}]], 'is_concurrent': 'bool', 'is_fixed': 'bool', 'is_precise': 'bool', 'metric': 'string', 'metric_display_name': 'string', 'metric_unit': 'string', 'name': 'string', 'quota_display_name': 'string', 'quota_id': 'string', 'quota_increase_eligibility': ['list', ['object', {'ineligibility_reason': 'string', 'is_eligible': 'bool'}]], 'refresh_interval': 'string', 'service': 'string', 'service_request_quota_uri': 'string'}]] (Computed)
}
