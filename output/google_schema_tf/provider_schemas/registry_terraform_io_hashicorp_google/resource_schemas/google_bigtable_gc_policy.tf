resource "google_bigtable_gc_policy" "name" {
  column_family = string (Required)
  instance_name = string (Required)
  table = string (Required)
  deletion_policy = string (Optional)
  gc_rules = string (Optional)
  id = string (Optional, Computed)
  ignore_warnings = bool (Optional)
  mode = string (Optional)
  project = string (Optional, Computed)

  max_age block "list" (Optional) {
    days = number (Optional, Computed)
    duration = string (Optional, Computed)
  }

  max_version block "list" (Optional) {
    number = number (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
