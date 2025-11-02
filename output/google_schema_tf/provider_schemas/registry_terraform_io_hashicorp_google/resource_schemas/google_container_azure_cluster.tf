resource "google_container_azure_cluster" "name" {
  azure_region = string (Required)
  location = string (Required)
  name = string (Required)
  resource_group_id = string (Required)
  annotations = ['map', 'string'] (Optional)
  client = string (Optional)
  create_time = string (Computed)
  description = string (Optional)
  effective_annotations = ['map', 'string'] (Computed)
  endpoint = string (Computed)
  etag = string (Computed)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  reconciling = bool (Computed)
  state = string (Computed)
  uid = string (Computed)
  update_time = string (Computed)
  workload_identity_config = ['list', ['object', {'identity_provider': 'string', 'issuer_uri': 'string', 'workload_pool': 'string'}]] (Computed)

  authorization block "list" (Required) {

    admin_groups block "list" (Optional) {
      group = string (Required)
    }

    admin_users block "list" (Required) {
      username = string (Required)
    }
  }

  azure_services_authentication block "list" (Optional) {
    application_id = string (Required)
    tenant_id = string (Required)
  }

  control_plane block "list" (Required) {
    subnet_id = string (Required)
    version = string (Required)
    tags = ['map', 'string'] (Optional)
    vm_size = string (Optional, Computed)

    database_encryption block "list" (Optional) {
      key_id = string (Required)
    }

    main_volume block "list" (Optional) {
      size_gib = number (Optional, Computed)
    }

    proxy_config block "list" (Optional) {
      resource_group_id = string (Required)
      secret_id = string (Required)
    }

    replica_placements block "list" (Optional) {
      azure_availability_zone = string (Required)
      subnet_id = string (Required)
    }

    root_volume block "list" (Optional) {
      size_gib = number (Optional, Computed)
    }

    ssh_config block "list" (Required) {
      authorized_key = string (Required)
    }
  }

  fleet block "list" (Required) {
    membership = string (Computed)
    project = string (Optional, Computed)
  }

  networking block "list" (Required) {
    pod_address_cidr_blocks = ['list', 'string'] (Required)
    service_address_cidr_blocks = ['list', 'string'] (Required)
    virtual_network_id = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
