resource "azurerm_vmware_private_cloud" "name" {
  location = string (Required)
  name = string (Required)
  network_subnet_cidr = string (Required)
  resource_group_name = string (Required)
  sku_name = string (Required)
  circuit = ['list', ['object', {'express_route_id': 'string', 'express_route_private_peering_id': 'string', 'primary_subnet_cidr': 'string', 'secondary_subnet_cidr': 'string'}]] (Computed)
  hcx_cloud_manager_endpoint = string (Computed)
  id = string (Optional, Computed)
  internet_connection_enabled = bool (Optional)
  management_subnet_cidr = string (Computed)
  nsxt_certificate_thumbprint = string (Computed)
  nsxt_manager_endpoint = string (Computed)
  nsxt_password = string (Optional)
  provisioning_subnet_cidr = string (Computed)
  tags = ['map', 'string'] (Optional)
  vcenter_certificate_thumbprint = string (Computed)
  vcenter_password = string (Optional)
  vcsa_endpoint = string (Computed)
  vmotion_subnet_cidr = string (Computed)

  management_cluster block "list" (Required) {
    size = number (Required)
    hosts = ['list', 'string'] (Computed)
    id = number (Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
