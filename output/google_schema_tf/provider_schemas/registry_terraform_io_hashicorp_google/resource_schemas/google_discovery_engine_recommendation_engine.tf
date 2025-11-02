resource "google_discovery_engine_recommendation_engine" "name" {
  data_store_ids = ['list', 'string'] (Required)
  display_name = string (Required)
  engine_id = string (Required)
  location = string (Required)
  create_time = string (Computed)
  id = string (Optional, Computed)
  industry_vertical = string (Optional)
  name = string (Computed)
  project = string (Optional, Computed)
  update_time = string (Computed)

  common_config block "list" (Optional) {
    company_name = string (Optional)
  }

  media_recommendation_engine_config block "list" (Optional) {
    optimization_objective = string (Optional)
    training_state = string (Optional)
    type = string (Optional)

    engine_features_config block "list" (Optional) {

      most_popular_config block "list" (Optional) {
        time_window_days = number (Optional)
      }

      recommended_for_you_config block "list" (Optional) {
        context_event_type = string (Optional)
      }
    }

    optimization_objective_config block "list" (Optional) {
      target_field = string (Optional)
      target_field_value_float = number (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
