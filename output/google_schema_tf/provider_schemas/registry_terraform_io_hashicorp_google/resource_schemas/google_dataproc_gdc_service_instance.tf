resource "google_dataproc_gdc_service_instance" "name" {
  location = string (Required)
  service_instance_id = string (Required)
  create_time = string (Computed)
  display_name = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  effective_service_account = string (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  name = string (Computed)
  project = string (Optional, Computed)
  reconciling = bool (Computed)
  requested_state = string (Computed)
  service_account = string (Optional)
  state = string (Computed)
  state_message = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)
  uid = string (Computed)
  update_time = string (Computed)

  gdce_cluster block "list" (Optional) {
    gdce_cluster = string (Required)
  }

  spark_service_instance_config block "list" (Optional) {
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
