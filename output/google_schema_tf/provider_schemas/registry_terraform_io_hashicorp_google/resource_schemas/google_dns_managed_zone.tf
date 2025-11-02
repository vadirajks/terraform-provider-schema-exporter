resource "google_dns_managed_zone" "name" {
  dns_name = string (Required)
  name = string (Required)
  creation_time = string (Computed)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  force_destroy = bool (Optional)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  managed_zone_id = number (Computed)
  name_servers = ['list', 'string'] (Computed)
  project = string (Optional, Computed)
  terraform_labels = ['map', 'string'] (Computed)
  visibility = string (Optional)

  cloud_logging_config block "list" (Optional) {
    enable_logging = bool (Required)
  }

  dnssec_config block "list" (Optional) {
    kind = string (Optional)
    non_existence = string (Optional, Computed)
    state = string (Optional)

    default_key_specs block "list" (Optional) {
      algorithm = string (Optional)
      key_length = number (Optional)
      key_type = string (Optional)
      kind = string (Optional)
    }
  }

  forwarding_config block "list" (Optional) {

    target_name_servers block "set" (Required) {
      domain_name = string (Optional)
      forwarding_path = string (Optional)
      ipv4_address = string (Optional)
    }
  }

  peering_config block "list" (Optional) {

    target_network block "list" (Required) {
      network_url = string (Required)
    }
  }

  private_visibility_config block "list" (Optional) {

    gke_clusters block "list" (Optional) {
      gke_cluster_name = string (Required)
    }

    networks block "set" (Optional) {
      network_url = string (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
