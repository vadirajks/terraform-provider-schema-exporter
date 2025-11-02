resource "google_cloud_asset_folder_feed" "name" {
  billing_project = string (Required)
  feed_id = string (Required)
  folder = string (Required)
  asset_names = ['list', 'string'] (Optional)
  asset_types = ['list', 'string'] (Optional)
  content_type = string (Optional)
  folder_id = string (Computed)
  id = string (Optional, Computed)
  name = string (Computed)

  condition block "list" (Optional) {
    expression = string (Required)
    description = string (Optional)
    location = string (Optional)
    title = string (Optional)
  }

  feed_output_config block "list" (Required) {

    pubsub_destination block "list" (Required) {
      topic = string (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
