data "azurerm_automation_variables" "name" {
  automation_account_id = string (Required)
  bool = ['list', ['object', {'description': 'string', 'encrypted': 'bool', 'id': 'string', 'name': 'string', 'value': 'bool'}]] (Computed)
  datetime = ['list', ['object', {'description': 'string', 'encrypted': 'bool', 'id': 'string', 'name': 'string', 'value': 'string'}]] (Computed)
  encrypted = ['list', ['object', {'description': 'string', 'encrypted': 'bool', 'id': 'string', 'name': 'string', 'value': 'string'}]] (Computed)
  id = string (Optional, Computed)
  int = ['list', ['object', {'description': 'string', 'encrypted': 'bool', 'id': 'string', 'name': 'string', 'value': 'number'}]] (Computed)
  null = ['list', ['object', {'description': 'string', 'encrypted': 'bool', 'id': 'string', 'name': 'string', 'value': 'string'}]] (Computed)
  object = ['list', ['object', {'description': 'string', 'encrypted': 'bool', 'id': 'string', 'name': 'string', 'value': 'string'}]] (Computed)
  string = ['list', ['object', {'description': 'string', 'encrypted': 'bool', 'id': 'string', 'name': 'string', 'value': 'string'}]] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
