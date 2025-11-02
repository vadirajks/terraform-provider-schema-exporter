resource "azurerm_palo_alto_local_rulestack" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  anti_spyware_profile = string (Optional)
  anti_virus_profile = string (Optional)
  description = string (Optional)
  dns_subscription = string (Optional)
  file_blocking_profile = string (Optional)
  id = string (Optional, Computed)
  url_filtering_profile = string (Optional)
  vulnerability_profile = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
