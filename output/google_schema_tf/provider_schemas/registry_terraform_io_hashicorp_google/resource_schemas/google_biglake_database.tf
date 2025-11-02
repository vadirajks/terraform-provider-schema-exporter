resource "google_biglake_database" "name" {
  catalog = string (Required)
  name = string (Required)
  type = string (Required)
  create_time = string (Computed)
  delete_time = string (Computed)
  expire_time = string (Computed)
  id = string (Optional, Computed)
  update_time = string (Computed)

  hive_options block "list" (Required) {
    location_uri = string (Optional)
    parameters = ['map', 'string'] (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
