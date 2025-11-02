resource "azurerm_healthcare_medtech_service_fhir_destination" "name" {
  destination_fhir_mapping_json = string (Required)
  destination_fhir_service_id = string (Required)
  destination_identity_resolution_type = string (Required)
  location = string (Required)
  medtech_service_id = string (Required)
  name = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
