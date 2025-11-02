resource "google_document_ai_warehouse_location" "name" {
  access_control_mode = string (Required)
  database_type = string (Required)
  location = string (Required)
  project_number = string (Required)
  document_creator_default_role = string (Optional)
  id = string (Optional, Computed)
  kms_key = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
