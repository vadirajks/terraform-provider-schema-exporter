resource "google_data_fusion_instance" "name" {
  name = string (Required)
  type = string (Required)
  api_endpoint = string (Computed)
  create_time = string (Computed)
  dataproc_service_account = string (Optional)
  description = string (Optional)
  display_name = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  enable_rbac = bool (Optional)
  enable_stackdriver_logging = bool (Optional)
  enable_stackdriver_monitoring = bool (Optional)
  gcs_bucket = string (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  options = ['map', 'string'] (Optional, Computed)
  p4_service_account = string (Computed)
  private_instance = bool (Optional)
  project = string (Optional, Computed)
  region = string (Optional, Computed)
  service_endpoint = string (Computed)
  state = string (Computed)
  state_message = string (Computed)
  tags = ['map', 'string'] (Optional)
  tenant_project_id = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)
  update_time = string (Computed)
  version = string (Optional, Computed)
  zone = string (Optional, Computed)

  accelerators block "list" (Optional) {
    accelerator_type = string (Required)
    state = string (Required)
  }

  crypto_key_config block "list" (Optional) {
    key_reference = string (Required)
  }

  event_publish_config block "list" (Optional) {
    enabled = bool (Required)
    topic = string (Required)
  }

  network_config block "list" (Optional) {
    connection_type = string (Optional)
    ip_allocation = string (Optional)
    network = string (Optional)

    private_service_connect_config block "list" (Optional) {
      effective_unreachable_cidr_block = string (Computed)
      network_attachment = string (Optional)
      unreachable_cidr_block = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
