resource "google_sql_user" "name" {
  instance = string (Required)
  name = string (Required)
  deletion_policy = string (Optional)
  host = string (Optional, Computed)
  id = string (Optional, Computed)
  password = string (Optional)
  password_wo = string (Optional)
  password_wo_version = number (Optional)
  project = string (Optional, Computed)
  sql_server_user_details = ['list', ['object', {'disabled': 'bool', 'server_roles': ['list', 'string']}]] (Computed)
  type = string (Optional)

  password_policy block "list" (Optional) {
    allowed_failed_attempts = number (Optional)
    enable_failed_attempts_check = bool (Optional)
    enable_password_verification = bool (Optional)
    password_expiration_duration = string (Optional)
    status = ['list', ['object', {'locked': 'bool', 'password_expiration_time': 'string'}]] (Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
