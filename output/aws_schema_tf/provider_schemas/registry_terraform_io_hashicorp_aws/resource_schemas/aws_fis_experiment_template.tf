resource "aws_fis_experiment_template" "name" {
  description = string (Required)
  role_arn = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  action block "set" (Required) {
    action_id = string (Required)
    name = string (Required)
    description = string (Optional)
    start_after = ['set', 'string'] (Optional)

    parameter block "set" (Optional) {
      key = string (Required)
      value = string (Required)
    }

    target block "list" (Optional) {
      key = string (Required)
      value = string (Required)
    }
  }

  experiment_options block "list" (Optional) {
    account_targeting = string (Optional)
    empty_target_resolution_mode = string (Optional)
  }

  experiment_report_configuration block "list" (Optional) {
    post_experiment_duration = string (Optional)
    pre_experiment_duration = string (Optional)

    data_sources block "list" (Optional) {

      cloudwatch_dashboard block "list" (Optional) {
        dashboard_arn = string (Optional)
      }
    }

    outputs block "list" (Optional) {

      s3_configuration block "list" (Optional) {
        bucket_name = string (Required)
        prefix = string (Optional)
      }
    }
  }

  log_configuration block "list" (Optional) {
    log_schema_version = number (Required)

    cloudwatch_logs_configuration block "list" (Optional) {
      log_group_arn = string (Required)
    }

    s3_configuration block "list" (Optional) {
      bucket_name = string (Required)
      prefix = string (Optional)
    }
  }

  stop_condition block "set" (Required) {
    source = string (Required)
    value = string (Optional)
  }

  target block "set" (Optional) {
    name = string (Required)
    resource_type = string (Required)
    selection_mode = string (Required)
    parameters = ['map', 'string'] (Optional)
    resource_arns = ['set', 'string'] (Optional)

    filter block "list" (Optional) {
      path = string (Required)
      values = ['set', 'string'] (Required)
    }

    resource_tag block "set" (Optional) {
      key = string (Required)
      value = string (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
