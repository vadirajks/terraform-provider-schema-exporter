data "azurerm_shared_image" "name" {
  gallery_name = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  accelerated_network_support_enabled = bool (Computed)
  architecture = string (Computed)
  confidential_vm_enabled = bool (Computed)
  confidential_vm_supported = bool (Computed)
  description = string (Computed)
  eula = string (Computed)
  hibernation_enabled = bool (Computed)
  hyper_v_generation = string (Computed)
  id = string (Optional, Computed)
  identifier = ['list', ['object', {'offer': 'string', 'publisher': 'string', 'sku': 'string'}]] (Computed)
  location = string (Computed)
  os_type = string (Computed)
  privacy_statement_uri = string (Computed)
  purchase_plan = ['list', ['object', {'name': 'string', 'product': 'string', 'publisher': 'string'}]] (Computed)
  release_note_uri = string (Computed)
  specialized = bool (Computed)
  tags = ['map', 'string'] (Computed)
  trusted_launch_enabled = bool (Computed)
  trusted_launch_supported = bool (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
