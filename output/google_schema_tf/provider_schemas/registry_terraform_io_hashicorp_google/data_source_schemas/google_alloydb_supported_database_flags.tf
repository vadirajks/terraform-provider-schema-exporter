data "google_alloydb_supported_database_flags" "name" {
  location = string (Required)
  id = string (Optional, Computed)
  project = string (Optional)
  supported_database_flags = ['list', ['object', {'accepts_multiple_values': 'bool', 'flag_name': 'string', 'integer_restrictions': ['list', ['object', {'max_value': 'string', 'min_value': 'string'}]], 'name': 'string', 'requires_db_restart': 'bool', 'string_restrictions': ['list', ['object', {'allowed_values': ['list', 'string']}]], 'supported_db_versions': ['list', 'string'], 'value_type': 'string'}]] (Computed)
}
