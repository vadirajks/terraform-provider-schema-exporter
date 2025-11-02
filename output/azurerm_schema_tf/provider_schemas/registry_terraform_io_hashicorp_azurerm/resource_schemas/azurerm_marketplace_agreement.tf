resource "azurerm_marketplace_agreement" "name" {
  offer = string (Required)
  plan = string (Required)
  publisher = string (Required)
  id = string (Optional, Computed)
  license_text_link = string (Computed)
  privacy_policy_link = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
