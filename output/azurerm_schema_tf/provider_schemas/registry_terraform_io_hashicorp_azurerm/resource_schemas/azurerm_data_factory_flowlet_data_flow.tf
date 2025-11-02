resource "azurerm_data_factory_flowlet_data_flow" "name" {
  data_factory_id = string (Required)
  name = string (Required)
  annotations = ['list', 'string'] (Optional)
  description = string (Optional)
  folder = string (Optional)
  id = string (Optional, Computed)
  script = string (Optional)
  script_lines = ['list', 'string'] (Optional)

  sink block "list" (Optional) {
    name = string (Required)
    description = string (Optional)

    dataset block "list" (Optional) {
      name = string (Required)
      parameters = ['map', 'string'] (Optional)
    }

    flowlet block "list" (Optional) {
      name = string (Required)
      dataset_parameters = string (Optional)
      parameters = ['map', 'string'] (Optional)
    }

    linked_service block "list" (Optional) {
      name = string (Required)
      parameters = ['map', 'string'] (Optional)
    }

    rejected_linked_service block "list" (Optional) {
      name = string (Required)
      parameters = ['map', 'string'] (Optional)
    }

    schema_linked_service block "list" (Optional) {
      name = string (Required)
      parameters = ['map', 'string'] (Optional)
    }
  }

  source block "list" (Optional) {
    name = string (Required)
    description = string (Optional)

    dataset block "list" (Optional) {
      name = string (Required)
      parameters = ['map', 'string'] (Optional)
    }

    flowlet block "list" (Optional) {
      name = string (Required)
      dataset_parameters = string (Optional)
      parameters = ['map', 'string'] (Optional)
    }

    linked_service block "list" (Optional) {
      name = string (Required)
      parameters = ['map', 'string'] (Optional)
    }

    rejected_linked_service block "list" (Optional) {
      name = string (Required)
      parameters = ['map', 'string'] (Optional)
    }

    schema_linked_service block "list" (Optional) {
      name = string (Required)
      parameters = ['map', 'string'] (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }

  transformation block "list" (Optional) {
    name = string (Required)
    description = string (Optional)

    dataset block "list" (Optional) {
      name = string (Required)
      parameters = ['map', 'string'] (Optional)
    }

    flowlet block "list" (Optional) {
      name = string (Required)
      dataset_parameters = string (Optional)
      parameters = ['map', 'string'] (Optional)
    }

    linked_service block "list" (Optional) {
      name = string (Required)
      parameters = ['map', 'string'] (Optional)
    }
  }
}
