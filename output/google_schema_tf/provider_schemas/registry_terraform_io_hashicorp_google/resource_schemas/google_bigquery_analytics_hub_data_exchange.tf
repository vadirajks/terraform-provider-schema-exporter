resource "google_bigquery_analytics_hub_data_exchange" "name" {
  data_exchange_id = string (Required)
  display_name = string (Required)
  location = string (Required)
  description = string (Optional)
  discovery_type = string (Optional, Computed)
  documentation = string (Optional)
  icon = string (Optional)
  id = string (Optional, Computed)
  listing_count = number (Computed)
  log_linked_dataset_query_user_email = bool (Optional)
  name = string (Computed)
  primary_contact = string (Optional)
  project = string (Optional, Computed)

  sharing_environment_config block "list" (Optional) {

    dcr_exchange_config block "list" (Optional) {
    }

    default_exchange_config block "list" (Optional) {
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
