data "google_backup_dr_backup" "name" {
  backup_vault_id = string (Required)
  data_source_id = string (Required)
  location = string (Required)
  project = string (Required)
  backups = ['list', ['object', {'backup_id': 'string', 'backup_vault_id': 'string', 'create_time': 'string', 'data_source_id': 'string', 'location': 'string', 'name': 'string'}]] (Computed)
  create_time = string (Computed)
  id = string (Optional, Computed)
  name = string (Computed)
}
