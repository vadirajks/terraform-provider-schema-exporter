resource "google_storage_batch_operations_job" "name" {
  complete_time = string (Computed)
  create_time = string (Computed)
  delete_protection = bool (Optional)
  id = string (Optional, Computed)
  job_id = string (Optional)
  project = string (Optional, Computed)
  schedule_time = string (Computed)
  state = string (Computed)
  update_time = string (Computed)

  bucket_list block "list" (Optional) {

    buckets block "list" (Required) {
      bucket = string (Required)

      manifest block "list" (Optional) {
        manifest_location = string (Optional)
      }

      prefix_list block "list" (Optional) {
        included_object_prefixes = ['list', 'string'] (Optional)
      }
    }
  }

  delete_object block "list" (Optional) {
    permanent_object_deletion_enabled = bool (Required)
  }

  put_metadata block "list" (Optional) {
    cache_control = string (Optional)
    content_disposition = string (Optional)
    content_encoding = string (Optional)
    content_language = string (Optional)
    content_type = string (Optional)
    custom_metadata = ['map', 'string'] (Optional)
    custom_time = string (Optional)
  }

  put_object_hold block "list" (Optional) {
    event_based_hold = string (Optional)
    temporary_hold = string (Optional)
  }

  rewrite_object block "list" (Optional) {
    kms_key = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
