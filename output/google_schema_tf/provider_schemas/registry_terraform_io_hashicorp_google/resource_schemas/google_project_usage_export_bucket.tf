resource "google_project_usage_export_bucket" "name" {
  bucket_name = string (Required)
  id = string (Optional, Computed)
  prefix = string (Optional)
  project = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
