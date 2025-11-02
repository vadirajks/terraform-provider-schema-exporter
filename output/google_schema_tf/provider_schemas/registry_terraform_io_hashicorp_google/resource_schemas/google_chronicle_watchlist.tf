resource "google_chronicle_watchlist" "name" {
  display_name = string (Required)
  instance = string (Required)
  location = string (Required)
  create_time = string (Computed)
  description = string (Optional)
  entity_count = ['list', ['object', {'asset': 'number', 'user': 'number'}]] (Computed)
  id = string (Optional, Computed)
  multiplying_factor = number (Optional)
  name = string (Computed)
  project = string (Optional, Computed)
  update_time = string (Computed)
  watchlist_id = string (Optional, Computed)

  entity_population_mechanism block "list" (Required) {

    manual block "list" (Optional) {
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  watchlist_user_preferences block "list" (Optional) {
    pinned = bool (Optional)
  }
}
