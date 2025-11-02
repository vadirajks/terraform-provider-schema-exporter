resource "google_storage_insights_report_config" "name" {
  location = string (Required)
  display_name = string (Optional)
  force_destroy = bool (Optional)
  id = string (Optional, Computed)
  name = string (Computed)
  project = string (Optional, Computed)

  csv_options block "list" (Optional) {
    delimiter = string (Optional)
    header_required = bool (Optional)
    record_separator = string (Optional)
  }

  frequency_options block "list" (Optional) {
    frequency = string (Required)

    end_date block "list" (Required) {
      day = number (Required)
      month = number (Required)
      year = number (Required)
    }

    start_date block "list" (Required) {
      day = number (Required)
      month = number (Required)
      year = number (Required)
    }
  }

  object_metadata_report_options block "list" (Optional) {
    metadata_fields = ['list', 'string'] (Required)

    storage_destination_options block "list" (Required) {
      bucket = string (Required)
      destination_path = string (Optional)
    }

    storage_filters block "list" (Optional) {
      bucket = string (Optional)
    }
  }

  parquet_options block "list" (Optional) {
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
