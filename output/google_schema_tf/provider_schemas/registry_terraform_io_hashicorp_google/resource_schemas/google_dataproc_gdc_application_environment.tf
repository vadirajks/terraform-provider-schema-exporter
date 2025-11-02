resource "google_dataproc_gdc_application_environment" "name" {
  location = string (Required)
  serviceinstance = string (Required)
  annotations = ['map', 'string'] (Optional)
  application_environment_id = string (Optional)
  create_time = string (Computed)
  display_name = string (Optional)
  effective_annotations = ['map', 'string'] (Computed)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  name = string (Computed)
  namespace = string (Optional)
  project = string (Optional, Computed)
  terraform_labels = ['map', 'string'] (Computed)
  uid = string (Computed)
  update_time = string (Computed)

  spark_application_environment_config block "list" (Optional) {
    default_properties = ['map', 'string'] (Optional)
    default_version = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
