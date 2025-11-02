resource "google_database_migration_service_migration_job" "name" {
  destination = string (Required)
  migration_job_id = string (Required)
  source = string (Required)
  type = string (Required)
  create_time = string (Computed)
  display_name = string (Optional)
  dump_path = string (Optional)
  dump_type = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  error = ['list', ['object', {'code': 'number', 'details': ['list', ['map', 'string']], 'message': 'string'}]] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  location = string (Optional)
  name = string (Computed)
  phase = string (Computed)
  project = string (Optional, Computed)
  state = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)

  dump_flags block "list" (Optional) {

    dump_flags block "list" (Optional) {
      name = string (Optional)
      value = string (Optional)
    }
  }

  performance_config block "list" (Optional) {
    dump_parallel_level = string (Optional)
  }

  reverse_ssh_connectivity block "list" (Optional) {
    vm = string (Optional)
    vm_ip = string (Optional)
    vm_port = number (Optional)
    vpc = string (Optional)
  }

  static_ip_connectivity block "list" (Optional) {
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  vpc_peering_connectivity block "list" (Optional) {
    vpc = string (Optional)
  }
}
