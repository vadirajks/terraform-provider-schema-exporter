resource "google_sql_source_representation_instance" "name" {
  database_version = string (Required)
  host = string (Required)
  name = string (Required)
  ca_certificate = string (Optional)
  client_certificate = string (Optional)
  client_key = string (Optional)
  dump_file_path = string (Optional)
  id = string (Optional, Computed)
  password = string (Optional)
  port = number (Optional)
  project = string (Optional, Computed)
  region = string (Optional, Computed)
  username = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
