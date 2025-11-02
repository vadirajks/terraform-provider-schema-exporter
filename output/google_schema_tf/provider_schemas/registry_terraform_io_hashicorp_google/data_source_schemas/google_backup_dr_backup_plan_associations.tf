data "google_backup_dr_backup_plan_associations" "name" {
  location = string (Required)
  resource_type = string (Required)
  associations = ['list', ['object', {'backup_plan': 'string', 'create_time': 'string', 'data_source': 'string', 'name': 'string', 'resource': 'string', 'rules_config_info': ['list', ['object', {'last_backup_error': ['list', ['object', {'code': 'number', 'message': 'string'}]], 'last_backup_state': 'string', 'last_successful_backup_consistency_time': 'string', 'rule_id': 'string'}]]}]] (Computed)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
}
