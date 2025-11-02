resource "azurerm_shared_image" "name" {
  gallery_name = string (Required)
  location = string (Required)
  name = string (Required)
  os_type = string (Required)
  resource_group_name = string (Required)
  accelerated_network_support_enabled = bool (Optional)
  architecture = string (Optional)
  confidential_vm_enabled = bool (Optional)
  confidential_vm_supported = bool (Optional)
  description = string (Optional)
  disk_controller_type_nvme_enabled = bool (Optional)
  disk_types_not_allowed = ['set', 'string'] (Optional)
  end_of_life_date = string (Optional)
  eula = string (Optional)
  hibernation_enabled = bool (Optional)
  hyper_v_generation = string (Optional)
  id = string (Optional, Computed)
  max_recommended_memory_in_gb = number (Optional)
  max_recommended_vcpu_count = number (Optional)
  min_recommended_memory_in_gb = number (Optional)
  min_recommended_vcpu_count = number (Optional)
  privacy_statement_uri = string (Optional)
  release_note_uri = string (Optional)
  specialized = bool (Optional)
  tags = ['map', 'string'] (Optional)
  trusted_launch_enabled = bool (Optional)
  trusted_launch_supported = bool (Optional)

  identifier block "list" (Required) {
    offer = string (Required)
    publisher = string (Required)
    sku = string (Required)
  }

  purchase_plan block "list" (Optional) {
    name = string (Required)
    product = string (Optional)
    publisher = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
