resource "azurerm_api_management_api_operation" "name" {
  api_management_name = string (Required)
  api_name = string (Required)
  display_name = string (Required)
  method = string (Required)
  operation_id = string (Required)
  resource_group_name = string (Required)
  url_template = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)

  request block "list" (Optional) {
    description = string (Optional)

    header block "list" (Optional) {
      name = string (Required)
      required = bool (Required)
      type = string (Required)
      default_value = string (Optional)
      description = string (Optional)
      schema_id = string (Optional)
      type_name = string (Optional)
      values = ['set', 'string'] (Optional)

      example block "list" (Optional) {
        name = string (Required)
        description = string (Optional)
        external_value = string (Optional)
        summary = string (Optional)
        value = string (Optional)
      }
    }

    query_parameter block "list" (Optional) {
      name = string (Required)
      required = bool (Required)
      type = string (Required)
      default_value = string (Optional)
      description = string (Optional)
      schema_id = string (Optional)
      type_name = string (Optional)
      values = ['set', 'string'] (Optional)

      example block "list" (Optional) {
        name = string (Required)
        description = string (Optional)
        external_value = string (Optional)
        summary = string (Optional)
        value = string (Optional)
      }
    }

    representation block "list" (Optional) {
      content_type = string (Required)
      schema_id = string (Optional)
      type_name = string (Optional)

      example block "list" (Optional) {
        name = string (Required)
        description = string (Optional)
        external_value = string (Optional)
        summary = string (Optional)
        value = string (Optional)
      }

      form_parameter block "list" (Optional) {
        name = string (Required)
        required = bool (Required)
        type = string (Required)
        default_value = string (Optional)
        description = string (Optional)
        schema_id = string (Optional)
        type_name = string (Optional)
        values = ['set', 'string'] (Optional)

        example block "list" (Optional) {
          name = string (Required)
          description = string (Optional)
          external_value = string (Optional)
          summary = string (Optional)
          value = string (Optional)
        }
      }
    }
  }

  response block "list" (Optional) {
    status_code = number (Required)
    description = string (Optional)

    header block "list" (Optional) {
      name = string (Required)
      required = bool (Required)
      type = string (Required)
      default_value = string (Optional)
      description = string (Optional)
      schema_id = string (Optional)
      type_name = string (Optional)
      values = ['set', 'string'] (Optional)

      example block "list" (Optional) {
        name = string (Required)
        description = string (Optional)
        external_value = string (Optional)
        summary = string (Optional)
        value = string (Optional)
      }
    }

    representation block "list" (Optional) {
      content_type = string (Required)
      schema_id = string (Optional)
      type_name = string (Optional)

      example block "list" (Optional) {
        name = string (Required)
        description = string (Optional)
        external_value = string (Optional)
        summary = string (Optional)
        value = string (Optional)
      }

      form_parameter block "list" (Optional) {
        name = string (Required)
        required = bool (Required)
        type = string (Required)
        default_value = string (Optional)
        description = string (Optional)
        schema_id = string (Optional)
        type_name = string (Optional)
        values = ['set', 'string'] (Optional)

        example block "list" (Optional) {
          name = string (Required)
          description = string (Optional)
          external_value = string (Optional)
          summary = string (Optional)
          value = string (Optional)
        }
      }
    }
  }

  template_parameter block "list" (Optional) {
    name = string (Required)
    required = bool (Required)
    type = string (Required)
    default_value = string (Optional)
    description = string (Optional)
    schema_id = string (Optional)
    type_name = string (Optional)
    values = ['set', 'string'] (Optional)

    example block "list" (Optional) {
      name = string (Required)
      description = string (Optional)
      external_value = string (Optional)
      summary = string (Optional)
      value = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
