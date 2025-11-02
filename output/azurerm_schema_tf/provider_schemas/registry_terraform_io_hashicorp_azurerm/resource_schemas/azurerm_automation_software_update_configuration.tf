resource "azurerm_automation_software_update_configuration" "name" {
  automation_account_id = string (Required)
  name = string (Required)
  duration = string (Optional)
  error_code = string (Computed)
  error_message = string (Computed)
  id = string (Optional, Computed)
  non_azure_computer_names = ['list', 'string'] (Optional)
  virtual_machine_ids = ['list', 'string'] (Optional)

  linux block "list" (Optional) {
    classifications_included = ['list', 'string'] (Required)
    excluded_packages = ['list', 'string'] (Optional)
    included_packages = ['list', 'string'] (Optional)
    reboot = string (Optional)
  }

  post_task block "list" (Optional) {
    parameters = ['map', 'string'] (Optional)
    source = string (Optional)
  }

  pre_task block "list" (Optional) {
    parameters = ['map', 'string'] (Optional)
    source = string (Optional)
  }

  schedule block "list" (Required) {
    frequency = string (Required)
    advanced_month_days = ['list', 'number'] (Optional)
    advanced_week_days = ['list', 'string'] (Optional)
    creation_time = string (Computed)
    description = string (Optional)
    expiry_time = string (Optional, Computed)
    expiry_time_offset_minutes = number (Optional)
    interval = number (Optional)
    is_enabled = bool (Optional)
    last_modified_time = string (Computed)
    next_run = string (Optional, Computed)
    next_run_offset_minutes = number (Optional)
    start_time = string (Optional, Computed)
    start_time_offset_minutes = number (Optional)
    time_zone = string (Optional)

    monthly_occurrence block "list" (Optional) {
      day = string (Required)
      occurrence = number (Required)
    }
  }

  target block "list" (Optional) {

    azure_query block "list" (Optional) {
      locations = ['list', 'string'] (Optional)
      scope = ['list', 'string'] (Optional)
      tag_filter = string (Optional)

      tags block "list" (Optional) {
        tag = string (Required)
        values = ['list', 'string'] (Required)
      }
    }

    non_azure_query block "list" (Optional) {
      function_alias = string (Optional)
      workspace_id = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }

  windows block "list" (Optional) {
    classifications_included = ['list', 'string'] (Required)
    excluded_knowledge_base_numbers = ['list', 'string'] (Optional)
    included_knowledge_base_numbers = ['list', 'string'] (Optional)
    reboot = string (Optional)
  }
}
