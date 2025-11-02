resource "google_healthcare_fhir_store" "name" {
  dataset = string (Required)
  name = string (Required)
  version = string (Required)
  complex_data_type_reference_parsing = string (Optional, Computed)
  default_search_handling_strict = bool (Optional)
  disable_referential_integrity = bool (Optional)
  disable_resource_versioning = bool (Optional)
  effective_labels = ['map', 'string'] (Computed)
  enable_history_import = bool (Optional)
  enable_update_create = bool (Optional)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  self_link = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)

  notification_config block "list" (Optional) {
    pubsub_topic = string (Required)
  }

  notification_configs block "list" (Optional) {
    pubsub_topic = string (Required)
    send_full_resource = bool (Optional)
    send_previous_resource_on_delete = bool (Optional)
  }

  stream_configs block "list" (Optional) {
    resource_types = ['list', 'string'] (Optional)

    bigquery_destination block "list" (Required) {
      dataset_uri = string (Required)

      schema_config block "list" (Required) {
        recursive_structure_depth = number (Required)
        schema_type = string (Optional)

        last_updated_partition_config block "list" (Optional) {
          type = string (Required)
          expiration_ms = string (Optional)
        }
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  validation_config block "list" (Optional) {
    disable_fhirpath_validation = bool (Optional)
    disable_profile_validation = bool (Optional)
    disable_reference_type_validation = bool (Optional)
    disable_required_field_validation = bool (Optional)
    enabled_implementation_guides = ['list', 'string'] (Optional)
  }
}
