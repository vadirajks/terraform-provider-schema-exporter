data "google_storage_control_organization_intelligence_config" "name" {
  name = string (Required)
  edition_config = string (Computed)
  effective_intelligence_config = ['list', ['object', {'effective_edition': 'string', 'intelligence_config': 'string'}]] (Computed)
  filter = ['list', ['object', {'excluded_cloud_storage_buckets': ['list', ['object', {'bucket_id_regexes': ['list', 'string']}]], 'excluded_cloud_storage_locations': ['list', ['object', {'locations': ['list', 'string']}]], 'included_cloud_storage_buckets': ['list', ['object', {'bucket_id_regexes': ['list', 'string']}]], 'included_cloud_storage_locations': ['list', ['object', {'locations': ['list', 'string']}]]}]] (Computed)
  id = string (Optional, Computed)
  trial_config = ['list', ['object', {'expire_time': 'string'}]] (Computed)
  update_time = string (Computed)
}
