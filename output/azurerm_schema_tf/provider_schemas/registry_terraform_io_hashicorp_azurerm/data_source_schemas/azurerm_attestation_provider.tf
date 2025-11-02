data "azurerm_attestation_provider" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  attestation_uri = string (Computed)
  id = string (Optional, Computed)
  location = string (Computed)
  tags = ['map', 'string'] (Computed)
  trust_model = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
