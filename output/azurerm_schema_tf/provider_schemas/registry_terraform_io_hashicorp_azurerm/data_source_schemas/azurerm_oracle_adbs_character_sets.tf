data "azurerm_oracle_adbs_character_sets" "name" {
  location = string (Required)
  character_sets = ['list', ['object', {'character_set': 'string'}]] (Computed)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
