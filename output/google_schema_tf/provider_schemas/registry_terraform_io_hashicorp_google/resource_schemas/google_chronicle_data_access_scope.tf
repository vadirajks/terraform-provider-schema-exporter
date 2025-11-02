resource "google_chronicle_data_access_scope" "name" {
  data_access_scope_id = string (Required)
  instance = string (Required)
  location = string (Required)
  allow_all = bool (Optional)
  author = string (Computed)
  create_time = string (Computed)
  description = string (Optional)
  display_name = string (Computed)
  id = string (Optional, Computed)
  last_editor = string (Computed)
  name = string (Computed)
  project = string (Optional, Computed)
  update_time = string (Computed)

  allowed_data_access_labels block "list" (Optional) {
    asset_namespace = string (Optional)
    data_access_label = string (Optional)
    display_name = string (Computed)
    log_type = string (Optional)

    ingestion_label block "list" (Optional) {
      ingestion_label_key = string (Required)
      ingestion_label_value = string (Optional)
    }
  }

  denied_data_access_labels block "list" (Optional) {
    asset_namespace = string (Optional)
    data_access_label = string (Optional)
    display_name = string (Computed)
    log_type = string (Optional)

    ingestion_label block "list" (Optional) {
      ingestion_label_key = string (Required)
      ingestion_label_value = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
