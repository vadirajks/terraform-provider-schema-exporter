resource "google_dataplex_datascan" "name" {
  data_scan_id = string (Required)
  location = string (Required)
  create_time = string (Computed)
  description = string (Optional)
  display_name = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  execution_status = ['list', ['object', {'latest_job_end_time': 'string', 'latest_job_start_time': 'string'}]] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  name = string (Computed)
  project = string (Optional, Computed)
  state = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)
  type = string (Computed)
  uid = string (Computed)
  update_time = string (Computed)

  data block "list" (Required) {
    entity = string (Optional)
    resource = string (Optional)
  }

  data_discovery_spec block "list" (Optional) {

    bigquery_publishing_config block "list" (Optional) {
      connection = string (Optional)
      location = string (Optional)
      project = string (Optional)
      table_type = string (Optional)
    }

    storage_config block "list" (Optional) {
      exclude_patterns = ['list', 'string'] (Optional)
      include_patterns = ['list', 'string'] (Optional)

      csv_options block "list" (Optional) {
        delimiter = string (Optional)
        encoding = string (Optional)
        header_rows = number (Optional)
        quote = string (Optional)
        type_inference_disabled = bool (Optional)
      }

      json_options block "list" (Optional) {
        encoding = string (Optional)
        type_inference_disabled = bool (Optional)
      }
    }
  }

  data_profile_spec block "list" (Optional) {
    row_filter = string (Optional)
    sampling_percent = number (Optional)

    exclude_fields block "list" (Optional) {
      field_names = ['list', 'string'] (Optional)
    }

    include_fields block "list" (Optional) {
      field_names = ['list', 'string'] (Optional)
    }

    post_scan_actions block "list" (Optional) {

      bigquery_export block "list" (Optional) {
        results_table = string (Optional)
      }
    }
  }

  data_quality_spec block "list" (Optional) {
    catalog_publishing_enabled = bool (Optional)
    row_filter = string (Optional)
    sampling_percent = number (Optional)

    post_scan_actions block "list" (Optional) {

      bigquery_export block "list" (Optional) {
        results_table = string (Optional)
      }

      notification_report block "list" (Optional) {

        job_end_trigger block "list" (Optional) {
        }

        job_failure_trigger block "list" (Optional) {
        }

        recipients block "list" (Required) {
          emails = ['list', 'string'] (Optional)
        }

        score_threshold_trigger block "list" (Optional) {
          score_threshold = number (Optional)
        }
      }
    }

    rules block "list" (Optional) {
      dimension = string (Required)
      column = string (Optional)
      description = string (Optional)
      ignore_null = bool (Optional)
      name = string (Optional)
      suspended = bool (Optional)
      threshold = number (Optional)

      non_null_expectation block "list" (Optional) {
      }

      range_expectation block "list" (Optional) {
        max_value = string (Optional)
        min_value = string (Optional)
        strict_max_enabled = bool (Optional)
        strict_min_enabled = bool (Optional)
      }

      regex_expectation block "list" (Optional) {
        regex = string (Required)
      }

      row_condition_expectation block "list" (Optional) {
        sql_expression = string (Required)
      }

      set_expectation block "list" (Optional) {
        values = ['list', 'string'] (Required)
      }

      sql_assertion block "list" (Optional) {
        sql_statement = string (Required)
      }

      statistic_range_expectation block "list" (Optional) {
        statistic = string (Required)
        max_value = string (Optional)
        min_value = string (Optional)
        strict_max_enabled = bool (Optional)
        strict_min_enabled = bool (Optional)
      }

      table_condition_expectation block "list" (Optional) {
        sql_expression = string (Required)
      }

      uniqueness_expectation block "list" (Optional) {
      }
    }
  }

  execution_spec block "list" (Required) {
    field = string (Optional)

    trigger block "list" (Required) {

      on_demand block "list" (Optional) {
      }

      schedule block "list" (Optional) {
        cron = string (Required)
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
