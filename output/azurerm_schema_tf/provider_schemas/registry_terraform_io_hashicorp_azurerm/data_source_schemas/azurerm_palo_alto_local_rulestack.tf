data "azurerm_palo_alto_local_rulestack" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  anti_spyware_profile = string (Computed)
  anti_virus_profile = string (Computed)
  description = string (Computed)
  dns_subscription = string (Computed)
  file_blocking_profile = string (Computed)
  id = string (Optional, Computed)
  location = string (Computed)
  outbound_trust_certificate = string (Computed)
  outbound_untrust_certificate = string (Computed)
  url_filtering_profile = string (Computed)
  vulnerability_profile = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
