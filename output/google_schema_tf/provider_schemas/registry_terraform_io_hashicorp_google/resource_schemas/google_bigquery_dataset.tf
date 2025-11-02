resource "google_bigquery_dataset" "name" {
  dataset_id = string (Required)
  creation_time = number (Computed)
  default_collation = string (Optional, Computed)
  default_partition_expiration_ms = number (Optional)
  default_table_expiration_ms = number (Optional)
  delete_contents_on_destroy = bool (Optional)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  etag = string (Computed)
  friendly_name = string (Optional)
  id = string (Optional, Computed)
  is_case_insensitive = bool (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  last_modified_time = number (Computed)
  location = string (Optional)
  max_time_travel_hours = string (Optional, Computed)
  project = string (Optional, Computed)
  resource_tags = ['map', 'string'] (Optional)
  self_link = string (Computed)
  storage_billing_model = string (Optional, Computed)
  terraform_labels = ['map', 'string'] (Computed)

  access block "set" (Optional) {
    domain = string (Optional)
    group_by_email = string (Optional)
    iam_member = string (Optional)
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

    view block "list" (Optional) {
      dataset_id = string (Required)
      project_id = string (Required)
      table_id = string (Required)
    }
  }

  default_encryption_configuration block "list" (Optional) {
    kms_key_name = string (Required)
  }

  external_catalog_dataset_options block "list" (Optional) {
    default_storage_location_uri = string (Optional)
    parameters = ['map', 'string'] (Optional)
  }

  external_dataset_reference block "list" (Optional) {
    connection = string (Required)
    external_source = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
