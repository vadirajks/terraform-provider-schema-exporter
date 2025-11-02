resource "google_bigquery_analytics_hub_listing_subscription" "name" {
  data_exchange_id = string (Required)
  listing_id = string (Required)
  location = string (Required)
  commercial_info = ['list', ['object', {'cloud_marketplace': ['list', ['object', {'order': 'string'}]]}]] (Computed)
  creation_time = string (Computed)
  id = string (Optional, Computed)
  last_modify_time = string (Computed)
  linked_dataset_map = ['set', ['object', {'linked_dataset': 'string', 'listing': 'string', 'resource_name': 'string'}]] (Computed)
  linked_resources = ['list', ['object', {'linked_dataset': 'string', 'listing': 'string'}]] (Computed)
  log_linked_dataset_query_user_email = bool (Computed)
  name = string (Computed)
  organization_display_name = string (Computed)
  organization_id = string (Computed)
  project = string (Optional, Computed)
  resource_type = string (Computed)
  state = string (Computed)
  subscriber_contact = string (Computed)
  subscription_id = string (Computed)

  destination_dataset block "list" (Required) {
    location = string (Required)
    description = string (Optional)
    friendly_name = string (Optional)
    labels = ['map', 'string'] (Optional)

    dataset_reference block "list" (Required) {
      dataset_id = string (Required)
      project_id = string (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
