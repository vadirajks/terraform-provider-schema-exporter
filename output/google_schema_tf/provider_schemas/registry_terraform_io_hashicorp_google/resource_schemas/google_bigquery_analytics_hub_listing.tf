resource "google_bigquery_analytics_hub_listing" "name" {
  data_exchange_id = string (Required)
  display_name = string (Required)
  listing_id = string (Required)
  location = string (Required)
  allow_only_metadata_sharing = bool (Optional)
  categories = ['list', 'string'] (Optional)
  commercial_info = ['list', ['object', {'cloud_marketplace': ['list', ['object', {'commercial_state': 'string', 'service': 'string'}]]}]] (Computed)
  delete_commercial = bool (Optional)
  description = string (Optional)
  discovery_type = string (Optional, Computed)
  documentation = string (Optional)
  icon = string (Optional)
  id = string (Optional, Computed)
  log_linked_dataset_query_user_email = bool (Optional)
  name = string (Computed)
  primary_contact = string (Optional)
  project = string (Optional, Computed)
  request_access = string (Optional)
  state = string (Computed)

  bigquery_dataset block "list" (Optional) {
    dataset = string (Required)

    selected_resources block "list" (Optional) {
      table = string (Optional)
    }
  }

  data_provider block "list" (Optional) {
    name = string (Required)
    primary_contact = string (Optional)
  }

  publisher block "list" (Optional) {
    name = string (Required)
    primary_contact = string (Optional)
  }

  pubsub_topic block "list" (Optional) {
    topic = string (Required)
    data_affinity_regions = ['set', 'string'] (Optional)
  }

  restricted_export_config block "list" (Optional) {
    enabled = bool (Optional)
    restrict_direct_table_access = bool (Computed)
    restrict_query_result = bool (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
