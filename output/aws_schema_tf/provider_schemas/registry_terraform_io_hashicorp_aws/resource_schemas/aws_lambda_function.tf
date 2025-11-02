resource "aws_lambda_function" "name" {
  function_name = string (Required)
  role = string (Required)
  architectures = ['list', 'string'] (Optional, Computed)
  arn = string (Computed)
  code_sha256 = string (Computed)
  code_signing_config_arn = string (Optional)
  description = string (Optional)
  filename = string (Optional)
  handler = string (Optional)
  id = string (Optional, Computed)
  image_uri = string (Optional)
  invoke_arn = string (Computed)
  kms_key_arn = string (Optional)
  last_modified = string (Computed)
  layers = ['list', 'string'] (Optional)
  memory_size = number (Optional)
  package_type = string (Optional)
  publish = bool (Optional)
  qualified_arn = string (Computed)
  qualified_invoke_arn = string (Computed)
  region = string (Optional, Computed)
  replace_security_groups_on_destroy = bool (Optional)
  replacement_security_group_ids = ['set', 'string'] (Optional)
  reserved_concurrent_executions = number (Optional)
  runtime = string (Optional)
  s3_bucket = string (Optional)
  s3_key = string (Optional)
  s3_object_version = string (Optional)
  signing_job_arn = string (Computed)
  signing_profile_version_arn = string (Computed)
  skip_destroy = bool (Optional)
  source_code_hash = string (Optional, Computed)
  source_code_size = number (Computed)
  source_kms_key_arn = string (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  timeout = number (Optional)
  version = string (Computed)

  dead_letter_config block "list" (Optional) {
    target_arn = string (Required)
  }

  environment block "list" (Optional) {
    variables = ['map', 'string'] (Optional)
  }

  ephemeral_storage block "list" (Optional) {
    size = number (Optional, Computed)
  }

  file_system_config block "list" (Optional) {
    arn = string (Required)
    local_mount_path = string (Required)
  }

  image_config block "list" (Optional) {
    command = ['list', 'string'] (Optional)
    entry_point = ['list', 'string'] (Optional)
    working_directory = string (Optional)
  }

  logging_config block "list" (Optional) {
    log_format = string (Required)
    application_log_level = string (Optional)
    log_group = string (Optional, Computed)
    system_log_level = string (Optional)
  }

  snap_start block "list" (Optional) {
    apply_on = string (Required)
    optimization_status = string (Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  tracing_config block "list" (Optional) {
    mode = string (Required)
  }

  vpc_config block "list" (Optional) {
    security_group_ids = ['set', 'string'] (Required)
    subnet_ids = ['set', 'string'] (Required)
    ipv6_allowed_for_dual_stack = bool (Optional)
    vpc_id = string (Computed)
  }
}
