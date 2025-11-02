resource "google_healthcare_pipeline_job" "name" {
  dataset = string (Required)
  location = string (Required)
  name = string (Required)
  disable_lineage = bool (Optional)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  self_link = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)

  backfill_pipeline_job block "list" (Optional) {
    mapping_pipeline_job = string (Optional)
  }

  mapping_pipeline_job block "list" (Optional) {
    fhir_store_destination = string (Optional)
    reconciliation_destination = bool (Optional)

    fhir_streaming_source block "list" (Optional) {
      fhir_store = string (Required)
      description = string (Optional)
    }

    mapping_config block "list" (Required) {
      description = string (Optional)

      whistle_config_source block "list" (Optional) {
        import_uri_prefix = string (Required)
        uri = string (Required)
      }
    }
  }

  reconciliation_pipeline_job block "list" (Optional) {
    matching_uri_prefix = string (Required)
    fhir_store_destination = string (Optional)

    merge_config block "list" (Required) {
      description = string (Optional)

      whistle_config_source block "list" (Required) {
        import_uri_prefix = string (Required)
        uri = string (Required)
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
