resource "azurerm_cdn_frontdoor_security_policy" "name" {
  cdn_frontdoor_profile_id = string (Required)
  name = string (Required)
  id = string (Optional, Computed)

  security_policies block "list" (Required) {

    firewall block "list" (Required) {
      cdn_frontdoor_firewall_policy_id = string (Required)

      association block "list" (Required) {
        patterns_to_match = ['list', 'string'] (Required)

        domain block "list" (Required) {
          cdn_frontdoor_domain_id = string (Required)
          active = bool (Computed)
        }
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
