data "azurerm_eventhub_sas" "name" {
  connection_string = string (Required)
  expiry = string (Required)
  id = string (Optional, Computed)
  sas = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
