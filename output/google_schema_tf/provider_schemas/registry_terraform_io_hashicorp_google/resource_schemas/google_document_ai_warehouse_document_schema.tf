resource "google_document_ai_warehouse_document_schema" "name" {
  display_name = string (Required)
  location = string (Required)
  project_number = string (Required)
  document_is_folder = bool (Optional)
  id = string (Optional, Computed)
  name = string (Computed)

  property_definitions block "list" (Required) {
    name = string (Required)
    display_name = string (Optional)
    is_filterable = bool (Optional)
    is_metadata = bool (Optional)
    is_repeatable = bool (Optional)
    is_required = bool (Optional)
    is_searchable = bool (Optional)
    retrieval_importance = string (Optional)

    date_time_type_options block "list" (Optional) {
    }

    enum_type_options block "list" (Optional) {
      possible_values = ['list', 'string'] (Required)
      validation_check_disabled = bool (Optional)
    }

    float_type_options block "list" (Optional) {
    }

    integer_type_options block "list" (Optional) {
    }

    map_type_options block "list" (Optional) {
    }

    property_type_options block "list" (Optional) {

      property_definitions block "list" (Required) {
        name = string (Required)
        display_name = string (Optional)
        is_filterable = bool (Optional)
        is_metadata = bool (Optional)
        is_repeatable = bool (Optional)
        is_required = bool (Optional)
        is_searchable = bool (Optional)
        retrieval_importance = string (Optional)

        date_time_type_options block "list" (Optional) {
        }

        enum_type_options block "list" (Optional) {
          possible_values = ['list', 'string'] (Required)
          validation_check_disabled = bool (Optional)
        }

        float_type_options block "list" (Optional) {
        }

        integer_type_options block "list" (Optional) {
        }

        map_type_options block "list" (Optional) {
        }

        schema_sources block "list" (Optional) {
          name = string (Optional)
          processor_type = string (Optional)
        }

        text_type_options block "list" (Optional) {
        }

        timestamp_type_options block "list" (Optional) {
        }
      }
    }

    schema_sources block "list" (Optional) {
      name = string (Optional)
      processor_type = string (Optional)
    }

    text_type_options block "list" (Optional) {
    }

    timestamp_type_options block "list" (Optional) {
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
