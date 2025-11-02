resource "azurerm_function_app_function" "name" {
  config_json = string (Required)
  function_app_id = string (Required)
  name = string (Required)
  config_url = string (Computed)
  enabled = bool (Optional)
  id = string (Optional, Computed)
  invocation_url = string (Computed)
  language = string (Optional)
  script_root_path_url = string (Computed)
  script_url = string (Computed)
  secrets_file_url = string (Computed)
  test_data = string (Optional)
  test_data_url = string (Computed)
  url = string (Computed)

  file block "list" (Optional) {
    content = string (Required)
    name = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
