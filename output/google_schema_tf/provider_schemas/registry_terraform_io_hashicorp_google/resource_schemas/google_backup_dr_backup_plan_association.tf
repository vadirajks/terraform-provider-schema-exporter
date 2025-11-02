resource "google_backup_dr_backup_plan_association" "name" {
  backup_plan = string (Required)
  backup_plan_association_id = string (Required)
  location = string (Required)
  resource = string (Required)
  resource_type = string (Required)
  create_time = string (Computed)
  data_source = string (Computed)
  id = string (Optional, Computed)
  last_successful_backup_consistency_time = string (Computed)
  name = string (Computed)
  project = string (Optional, Computed)
  rules_config_info = ['list', ['object', {'last_backup_error': ['list', ['object', {'code': 'number', 'message': 'string'}]], 'last_backup_state': 'string', 'rule_id': 'string'}]] (Computed)
  update_time = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
