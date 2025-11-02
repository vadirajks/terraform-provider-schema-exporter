resource "google_tpu_node" "name" {
  accelerator_type = string (Required)
  name = string (Required)
  tensorflow_version = string (Required)
  cidr_block = string (Optional, Computed)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  network = string (Optional, Computed)
  network_endpoints = ['list', ['object', {'ip_address': 'string', 'port': 'number'}]] (Computed)
  project = string (Optional, Computed)
  service_account = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)
  use_service_networking = bool (Optional)
  zone = string (Optional, Computed)

  scheduling_config block "list"  (Optional){
    preemptible = bool (Required)
  }

  timeouts block "single"  (Optional){
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
