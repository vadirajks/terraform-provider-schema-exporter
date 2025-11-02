data "azurerm_storage_account_sas" "name" {
  connection_string = string (Required)
  expiry = string (Required)
  start = string (Required)
  https_only = bool (Optional)
  id = string (Optional, Computed)
  ip_addresses = string (Optional)
  sas = string (Computed)
  signed_version = string (Optional)

  permissions block "list" (Required) {
    add = bool (Required)
    create = bool (Required)
    delete = bool (Required)
    filter = bool (Required)
    list = bool (Required)
    process = bool (Required)
    read = bool (Required)
    tag = bool (Required)
    update = bool (Required)
    write = bool (Required)
  }

  resource_types block "list" (Required) {
    container = bool (Required)
    object = bool (Required)
    service = bool (Required)
  }

  services block "list" (Required) {
    blob = bool (Required)
    file = bool (Required)
    queue = bool (Required)
    table = bool (Required)
  }

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
