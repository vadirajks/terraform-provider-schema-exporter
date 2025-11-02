resource "google_managed_kafka_connect_cluster" "name" {
  connect_cluster_id = string (Required)
  kafka_cluster = string (Required)
  location = string (Required)
  create_time = string (Computed)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  name = string (Computed)
  project = string (Optional, Computed)
  state = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)
  update_time = string (Computed)

  capacity_config block "list" (Required) {
    memory_bytes = string (Required)
    vcpu_count = string (Required)
  }

  gcp_config block "list" (Required) {

    access_config block "list" (Required) {

      network_configs block "list" (Required) {
        primary_subnet = string (Required)
        additional_subnets = ['list', 'string'] (Optional)
        dns_domain_names = ['list', 'string'] (Optional)
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
