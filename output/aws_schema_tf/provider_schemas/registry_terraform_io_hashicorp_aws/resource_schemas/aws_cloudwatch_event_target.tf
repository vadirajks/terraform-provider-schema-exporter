resource "aws_cloudwatch_event_target" "name" {
  arn = string (Required)
  rule = string (Required)
  event_bus_name = string (Optional)
  force_destroy = bool (Optional)
  id = string (Optional, Computed)
  input = string (Optional)
  input_path = string (Optional)
  region = string (Optional, Computed)
  role_arn = string (Optional)
  target_id = string (Optional, Computed)

  appsync_target block "list" (Optional) {
    graphql_operation = string (Optional)
  }

  batch_target block "list" (Optional) {
    job_definition = string (Required)
    job_name = string (Required)
    array_size = number (Optional)
    job_attempts = number (Optional)
  }

  dead_letter_config block "list" (Optional) {
    arn = string (Optional)
  }

  ecs_target block "list" (Optional) {
    task_definition_arn = string (Required)
    enable_ecs_managed_tags = bool (Optional)
    enable_execute_command = bool (Optional)
    group = string (Optional)
    launch_type = string (Optional)
    platform_version = string (Optional)
    propagate_tags = string (Optional)
    tags = ['map', 'string'] (Optional)
    task_count = number (Optional)

    capacity_provider_strategy block "set" (Optional) {
      capacity_provider = string (Required)
      base = number (Optional)
      weight = number (Optional)
    }

    network_configuration block "list" (Optional) {
      subnets = ['set', 'string'] (Required)
      assign_public_ip = bool (Optional)
      security_groups = ['set', 'string'] (Optional)
    }

    ordered_placement_strategy block "list" (Optional) {
      type = string (Required)
      field = string (Optional)
    }

    placement_constraint block "set" (Optional) {
      type = string (Required)
      expression = string (Optional)
    }
  }

  http_target block "list" (Optional) {
    header_parameters = ['map', 'string'] (Optional)
    path_parameter_values = ['list', 'string'] (Optional)
    query_string_parameters = ['map', 'string'] (Optional)
  }

  input_transformer block "list" (Optional) {
    input_template = string (Required)
    input_paths = ['map', 'string'] (Optional)
  }

  kinesis_target block "list" (Optional) {
    partition_key_path = string (Optional)
  }

  redshift_target block "list" (Optional) {
    database = string (Required)
    db_user = string (Optional)
    secrets_manager_arn = string (Optional)
    sql = string (Optional)
    statement_name = string (Optional)
    with_event = bool (Optional)
  }

  retry_policy block "list" (Optional) {
    maximum_event_age_in_seconds = number (Optional)
    maximum_retry_attempts = number (Optional)
  }

  run_command_targets block "list" (Optional) {
    key = string (Required)
    values = ['list', 'string'] (Required)
  }

  sagemaker_pipeline_target block "list" (Optional) {

    pipeline_parameter_list block "set" (Optional) {
      name = string (Required)
      value = string (Required)
    }
  }

  sqs_target block "list" (Optional) {
    message_group_id = string (Optional)
  }
}
