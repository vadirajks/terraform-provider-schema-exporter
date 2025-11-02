resource "google_storage_control_project_intelligence_config" "name" {
  name = string (Required)
  edition_config = string (Optional, Computed)
  effective_intelligence_config = ['list', ['object', {'effective_edition': 'string', 'intelligence_config': 'string'}]] (Computed)
  id = string (Optional, Computed)
  trial_config = ['list', ['object', {'expire_time': 'string'}]] (Computed)
  update_time = string (Computed)

  filter block "list" (Optional) {

    excluded_cloud_storage_buckets block "list" (Optional) {
      bucket_id_regexes = ['list', 'string'] (Required)
    }

    excluded_cloud_storage_locations block "list" (Optional) {
      locations = ['list', 'string'] (Required)
    }

    included_cloud_storage_buckets block "list" (Optional) {
      bucket_id_regexes = ['list', 'string'] (Required)
    }

    included_cloud_storage_locations block "list" (Optional) {
      locations = ['list', 'string'] (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
