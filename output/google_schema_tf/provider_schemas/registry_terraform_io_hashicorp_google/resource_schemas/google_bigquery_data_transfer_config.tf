resource "google_bigquery_data_transfer_config" "name" {
  data_source_id = string (Required)
  display_name = string (Required)
  params = ['map', 'string'] (Required)
  data_refresh_window_days = number (Optional)
  destination_dataset_id = string (Optional)
  disabled = bool (Optional)
  id = string (Optional, Computed)
  location = string (Optional)
  name = string (Computed)
  notification_pubsub_topic = string (Optional)
  project = string (Optional, Computed)
  schedule = string (Optional)
  service_account_name = string (Optional)

  email_preferences block "list" (Optional) {
    enable_failure_email = bool (Required)
  }

  encryption_configuration block "list" (Optional) {
    kms_key_name = string (Required)
  }

  schedule_options block "list" (Optional) {
    disable_auto_scheduling = bool (Optional)
    end_time = string (Optional)
    start_time = string (Optional)
  }

  sensitive_params block "list" (Optional) {
    secret_access_key = string (Optional)
    secret_access_key_wo = string (Optional)
    secret_access_key_wo_version = number (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
