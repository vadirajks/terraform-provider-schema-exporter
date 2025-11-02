resource "google_network_management_connectivity_test" "name" {
  name = string (Required)
  bypass_firewall_checks = bool (Optional)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  project = string (Optional, Computed)
  protocol = string (Optional)
  related_projects = ['list', 'string'] (Optional)
  round_trip = bool (Optional)
  terraform_labels = ['map', 'string'] (Computed)

  destination block "list" (Required) {
    cloud_sql_instance = string (Optional)
    forwarding_rule = string (Optional)
    fqdn = string (Optional)
    gke_master_cluster = string (Optional)
    instance = string (Optional)
    ip_address = string (Optional)
    network = string (Optional)
    port = number (Optional)
    project_id = string (Optional)
    redis_cluster = string (Optional)
    redis_instance = string (Optional)
  }

  source block "list" (Required) {
    cloud_sql_instance = string (Optional)
    gke_master_cluster = string (Optional)
    instance = string (Optional)
    ip_address = string (Optional)
    network = string (Optional)
    network_type = string (Optional)
    port = number (Optional)
    project_id = string (Optional)

    app_engine_version block "list" (Optional) {
      uri = string (Optional)
    }

    cloud_function block "list" (Optional) {
      uri = string (Optional)
    }

    cloud_run_revision block "list" (Optional) {
      uri = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
