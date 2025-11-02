resource "azurerm_sentinel_watchlist_item" "name" {
  properties = ['map', 'string'] (Required)
  watchlist_id = string (Required)
  id = string (Optional, Computed)
  name = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
