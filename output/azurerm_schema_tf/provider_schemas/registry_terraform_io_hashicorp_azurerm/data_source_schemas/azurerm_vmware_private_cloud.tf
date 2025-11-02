data "azurerm_vmware_private_cloud" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  circuit = ['list', ['object', {'express_route_id': 'string', 'express_route_private_peering_id': 'string', 'primary_subnet_cidr': 'string', 'secondary_subnet_cidr': 'string'}]] (Computed)
  hcx_cloud_manager_endpoint = string (Computed)
  id = string (Optional, Computed)
  internet_connection_enabled = bool (Computed)
  location = string (Computed)
  management_cluster = ['list', ['object', {'hosts': ['list', 'string'], 'id': 'number', 'size': 'number'}]] (Computed)
  management_subnet_cidr = string (Computed)
  network_subnet_cidr = string (Computed)
  nsxt_certificate_thumbprint = string (Computed)
  nsxt_manager_endpoint = string (Computed)
  provisioning_subnet_cidr = string (Computed)
  sku_name = string (Computed)
  tags = ['map', 'string'] (Computed)
  vcenter_certificate_thumbprint = string (Computed)
  vcsa_endpoint = string (Computed)
  vmotion_subnet_cidr = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
