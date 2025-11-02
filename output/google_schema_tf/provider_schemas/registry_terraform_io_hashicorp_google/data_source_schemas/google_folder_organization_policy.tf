data "google_folder_organization_policy" "name" {
  constraint = string (Required)
  folder = string (Required)
  boolean_policy = ['list', ['object', {'enforced': 'bool'}]] (Computed)
  etag = string (Computed)
  id = string (Optional, Computed)
  list_policy = ['list', ['object', {'allow': ['list', ['object', {'all': 'bool', 'values': ['set', 'string']}]], 'deny': ['list', ['object', {'all': 'bool', 'values': ['set', 'string']}]], 'inherit_from_parent': 'bool', 'suggested_value': 'string'}]] (Computed)
  restore_policy = ['list', ['object', {'default': 'bool'}]] (Computed)
  update_time = string (Computed)
  version = number (Computed)
}
