resource "google_bigquery_dataset_access" "name" {
  dataset_id = string (Required)
  api_updated_member = bool (Computed)
  domain = string (Optional)
  group_by_email = string (Optional)
  iam_member = string (Optional)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  role = string (Optional)
  special_group = string (Optional)
  user_by_email = string (Optional)

  condition block "list" (Optional) {
    expression = string (Required)
    description = string (Optional)
    location = string (Optional)
    title = string (Optional)
  }

  dataset block "list" (Optional) {
    target_types = ['list', 'string'] (Required)

    dataset block "list" (Required) {
      dataset_id = string (Required)
      project_id = string (Required)
    }
  }

  routine block "list" (Optional) {
    dataset_id = string (Required)
    project_id = string (Required)
    routine_id = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }

  view block "list" (Optional) {
    dataset_id = string (Required)
    project_id = string (Required)
    table_id = string (Required)
  }
}
