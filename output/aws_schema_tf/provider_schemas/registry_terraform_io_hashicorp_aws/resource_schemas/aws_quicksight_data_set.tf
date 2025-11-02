resource "aws_quicksight_data_set" "name" {
  data_set_id = string (Required)
  import_mode = string (Required)
  name = string (Required)
  arn = string (Computed)
  aws_account_id = string (Optional, Computed)
  id = string (Optional, Computed)
  output_columns = ['list', ['object', {'description': 'string', 'name': 'string', 'type': 'string'}]] (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  column_groups block "list" (Optional) {

    geo_spatial_column_group block "list" (Optional) {
      columns = ['list', 'string'] (Required)
      country_code = string (Required)
      name = string (Required)
    }
  }

  column_level_permission_rules block "list" (Optional) {
    column_names = ['list', 'string'] (Optional)
    principals = ['list', 'string'] (Optional)
  }

  data_set_usage_configuration block "list" (Optional) {
    disable_use_as_direct_query_source = bool (Optional, Computed)
    disable_use_as_imported_source = bool (Optional, Computed)
  }

  field_folders block "set" (Optional) {
    field_folders_id = string (Required)
    columns = ['list', 'string'] (Optional)
    description = string (Optional)
  }

  logical_table_map block "set" (Optional) {
    alias = string (Required)
    logical_table_map_id = string (Required)

    data_transforms block "list" (Optional) {

      cast_column_type_operation block "list" (Optional) {
        column_name = string (Required)
        new_column_type = string (Required)
        format = string (Optional, Computed)
      }

      create_columns_operation block "list" (Optional) {

        columns block "list" (Required) {
          column_id = string (Required)
          column_name = string (Required)
          expression = string (Required)
        }
      }

      filter_operation block "list" (Optional) {
        condition_expression = string (Required)
      }

      project_operation block "list" (Optional) {
        projected_columns = ['list', 'string'] (Required)
      }

      rename_column_operation block "list" (Optional) {
        column_name = string (Required)
        new_column_name = string (Required)
      }

      tag_column_operation block "list" (Optional) {
        column_name = string (Required)

        tags block "list" (Required) {
          column_geographic_role = string (Optional, Computed)

          column_description block "list" (Optional) {
            text = string (Optional, Computed)
          }
        }
      }

      untag_column_operation block "list" (Optional) {
        column_name = string (Required)
        tag_names = ['list', 'string'] (Required)
      }
    }

    source block "list" (Required) {
      data_set_arn = string (Optional, Computed)
      physical_table_id = string (Optional, Computed)

      join_instruction block "list" (Optional) {
        left_operand = string (Required)
        on_clause = string (Required)
        right_operand = string (Required)
        type = string (Required)

        left_join_key_properties block "list" (Optional) {
          unique_key = bool (Optional, Computed)
        }

        right_join_key_properties block "list" (Optional) {
          unique_key = bool (Optional, Computed)
        }
      }
    }
  }

  permissions block "set" (Optional) {
    actions = ['set', 'string'] (Required)
    principal = string (Required)
  }

  physical_table_map block "set" (Optional) {
    physical_table_map_id = string (Required)

    custom_sql block "list" (Optional) {
      data_source_arn = string (Required)
      name = string (Required)
      sql_query = string (Required)

      columns block "list" (Optional) {
        name = string (Required)
        type = string (Required)
      }
    }

    relational_table block "list" (Optional) {
      data_source_arn = string (Required)
      name = string (Required)
      catalog = string (Optional)
      schema = string (Optional)

      input_columns block "list" (Required) {
        name = string (Required)
        type = string (Required)
      }
    }

    s3_source block "list" (Optional) {
      data_source_arn = string (Required)

      input_columns block "list" (Required) {
        name = string (Required)
        type = string (Required)
      }

      upload_settings block "list" (Required) {
        contains_header = bool (Optional, Computed)
        delimiter = string (Optional, Computed)
        format = string (Optional, Computed)
        start_from_row = number (Optional, Computed)
        text_qualifier = string (Optional, Computed)
      }
    }
  }

  refresh_properties block "list" (Optional) {

    refresh_configuration block "list" (Required) {

      incremental_refresh block "list" (Required) {

        lookback_window block "list" (Required) {
          column_name = string (Required)
          size = number (Required)
          size_unit = string (Required)
        }
      }
    }
  }

  row_level_permission_data_set block "list" (Optional) {
    arn = string (Required)
    permission_policy = string (Required)
    format_version = string (Optional)
    namespace = string (Optional)
    status = string (Optional)
  }

  row_level_permission_tag_configuration block "list" (Optional) {
    status = string (Optional)

    tag_rules block "list" (Required) {
      column_name = string (Required)
      tag_key = string (Required)
      match_all_value = string (Optional)
      tag_multi_value_delimiter = string (Optional)
    }
  }
}
