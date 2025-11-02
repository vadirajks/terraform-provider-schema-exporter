resource "google_storage_insights_dataset_config" "name" {
  dataset_config_id = string (Required)
  location = string (Required)
  retention_period_days = number (Required)
  create_time = string (Computed)
  dataset_config_state = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  include_newly_created_buckets = bool (Optional)
  link = ['list', ['object', {'dataset': 'string', 'linked': 'bool'}]] (Computed)
  link_dataset = bool (Optional)
  name = string (Computed)
  organization_number = string (Optional, Computed)
  organization_scope = bool (Optional)
  project = string (Optional, Computed)
  uid = string (Computed)
  update_time = string (Computed)

  exclude_cloud_storage_buckets block "list" (Optional) {

    cloud_storage_buckets block "list" (Required) {
      bucket_name = string (Optional)
      bucket_prefix_regex = string (Optional)
    }
  }

  exclude_cloud_storage_locations block "list" (Optional) {
    locations = ['list', 'string'] (Required)
  }

  identity block "list" (Required) {
    type = string (Required)
    name = string (Computed)
  }

  include_cloud_storage_buckets block "list" (Optional) {

    cloud_storage_buckets block "list" (Required) {
      bucket_name = string (Optional)
      bucket_prefix_regex = string (Optional)
    }
  }

  include_cloud_storage_locations block "list" (Optional) {
    locations = ['list', 'string'] (Required)
  }

  source_folders block "list" (Optional) {
    folder_numbers = ['list', 'string'] (Optional)
  }

  source_projects block "list" (Optional) {
    project_numbers = ['list', 'string'] (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
