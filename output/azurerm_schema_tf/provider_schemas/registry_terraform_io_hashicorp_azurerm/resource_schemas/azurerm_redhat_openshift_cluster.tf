resource "azurerm_redhat_openshift_cluster" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  console_url = string (Computed)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  api_server_profile block "list" (Required) {
    visibility = string (Required)
    ip_address = string (Computed)
    url = string (Computed)
  }

  cluster_profile block "list" (Required) {
    domain = string (Required)
    version = string (Required)
    fips_enabled = bool (Optional)
    managed_resource_group_name = string (Optional)
    pull_secret = string (Optional)
    resource_group_id = string (Computed)
  }

  ingress_profile block "list" (Required) {
    visibility = string (Required)
    ip_address = string (Computed)
    name = string (Computed)
  }

  main_profile block "list" (Required) {
    subnet_id = string (Required)
    vm_size = string (Required)
    disk_encryption_set_id = string (Optional)
    encryption_at_host_enabled = bool (Optional)
  }

  network_profile block "list" (Required) {
    pod_cidr = string (Required)
    service_cidr = string (Required)
    outbound_type = string (Optional)
    preconfigured_network_security_group_enabled = bool (Optional)
  }

  service_principal block "list" (Required) {
    client_id = string (Required)
    client_secret = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }

  worker_profile block "list" (Required) {
    disk_size_gb = number (Required)
    node_count = number (Required)
    subnet_id = string (Required)
    vm_size = string (Required)
    disk_encryption_set_id = string (Optional)
    encryption_at_host_enabled = bool (Optional)
  }
}
