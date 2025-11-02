resource "google_alloydb_instance" "name" {
  cluster = string (Required)
  instance_id = string (Required)
  instance_type = string (Required)
  activation_policy = string (Optional, Computed)
  annotations = ['map', 'string'] (Optional)
  availability_type = string (Optional, Computed)
  create_time = string (Computed)
  database_flags = ['map', 'string'] (Optional, Computed)
  display_name = string (Optional)
  effective_annotations = ['map', 'string'] (Computed)
  effective_labels = ['map', 'string'] (Computed)
  gce_zone = string (Optional)
  id = string (Optional, Computed)
  ip_address = string (Computed)
  labels = ['map', 'string'] (Optional)
  name = string (Computed)
  outbound_public_ip_addresses = ['list', 'string'] (Computed)
  public_ip_address = string (Computed)
  reconciling = bool (Computed)
  state = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)
  uid = string (Computed)
  update_time = string (Computed)

  client_connection_config block "list" (Optional) {
    require_connectors = bool (Optional)

    ssl_config block "list" (Optional) {
      ssl_mode = string (Optional, Computed)
    }
  }

  machine_config block "list" (Optional) {
    cpu_count = number (Optional, Computed)
    machine_type = string (Optional, Computed)
  }

  network_config block "list" (Optional) {
    allocated_ip_range_override = string (Optional)
    enable_outbound_public_ip = bool (Optional)
    enable_public_ip = bool (Optional)

    authorized_external_networks block "list" (Optional) {
      cidr_range = string (Optional)
    }
  }

  psc_instance_config block "list" (Optional) {
    allowed_consumer_projects = ['list', 'string'] (Optional)
    psc_dns_name = string (Computed)
    service_attachment_link = string (Computed)

    psc_auto_connections block "list" (Optional) {
      consumer_network = string (Optional)
      consumer_network_status = string (Computed)
      consumer_project = string (Optional)
      ip_address = string (Computed)
      status = string (Computed)
    }

    psc_interface_configs block "list" (Optional) {
      network_attachment_resource = string (Optional)
    }
  }

  query_insights_config block "list" (Optional) {
    query_plans_per_minute = number (Optional)
    query_string_length = number (Optional)
    record_application_tags = bool (Optional)
    record_client_address = bool (Optional)
  }

  read_pool_config block "list" (Optional) {
    node_count = number (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
