data "google_cloud_asset_search_all_resources" "name" {
  scope = string (Required)
  asset_types = ['list', 'string'] (Optional)
  id = string (Optional, Computed)
  query = string (Optional)
  results = ['list', ['object', {'asset_type': 'string', 'create_time': 'string', 'description': 'string', 'display_name': 'string', 'folders': ['list', 'string'], 'kms_keys': ['list', 'string'], 'labels': ['map', 'string'], 'location': 'string', 'name': 'string', 'network_tags': ['list', 'string'], 'organization': 'string', 'parent_asset_type': 'string', 'parent_full_resource_name': 'string', 'project': 'string', 'state': 'string', 'update_time': 'string'}]] (Computed)
}
