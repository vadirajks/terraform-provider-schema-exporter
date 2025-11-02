resource "google_biglake_table" "name" {
  name = string (Required)
  create_time = string (Computed)
  database = string (Optional)
  delete_time = string (Computed)
  etag = string (Computed)
  expire_time = string (Computed)
  id = string (Optional, Computed)
  type = string (Optional)
  update_time = string (Computed)

  hive_options block "list" (Optional) {
    parameters = ['map', 'string'] (Optional)
    table_type = string (Optional)

    storage_descriptor block "list" (Optional) {
      input_format = string (Optional)
      location_uri = string (Optional)
      output_format = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
