resource "aws_codebuild_project" "name" {
  name = string (Required)
  service_role = string (Required)
  arn = string (Computed)
  auto_retry_limit = number (Optional, Computed)
  badge_enabled = bool (Optional)
  badge_url = string (Computed)
  build_timeout = number (Optional)
  concurrent_build_limit = number (Optional)
  description = string (Optional, Computed)
  encryption_key = string (Optional, Computed)
  id = string (Optional, Computed)
  project_visibility = string (Optional)
  public_project_alias = string (Computed)
  queued_timeout = number (Optional)
  region = string (Optional, Computed)
  resource_access_role = string (Optional)
  source_version = string (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  artifacts block "list" (Required) {
    type = string (Required)
    artifact_identifier = string (Optional)
    bucket_owner_access = string (Optional)
    encryption_disabled = bool (Optional)
    location = string (Optional)
    name = string (Optional)
    namespace_type = string (Optional)
    override_artifact_name = bool (Optional)
    packaging = string (Optional)
    path = string (Optional)
  }

  build_batch_config block "list" (Optional) {
    service_role = string (Required)
    combine_artifacts = bool (Optional)
    timeout_in_mins = number (Optional)

    restrictions block "list" (Optional) {
      compute_types_allowed = ['list', 'string'] (Optional)
      maximum_builds_allowed = number (Optional)
    }
  }

  cache block "list" (Optional) {
    location = string (Optional)
    modes = ['list', 'string'] (Optional)
    type = string (Optional)
  }

  environment block "list" (Required) {
    compute_type = string (Required)
    image = string (Required)
    type = string (Required)
    certificate = string (Optional)
    image_pull_credentials_type = string (Optional)
    privileged_mode = bool (Optional)

    docker_server block "list" (Optional) {
      compute_type = string (Required)
      security_group_ids = ['list', 'string'] (Optional)
    }

    environment_variable block "list" (Optional) {
      name = string (Required)
      value = string (Required)
      type = string (Optional)
    }

    fleet block "list" (Optional) {
      fleet_arn = string (Optional)
    }

    registry_credential block "list" (Optional) {
      credential = string (Required)
      credential_provider = string (Required)
    }
  }

  file_system_locations block "set" (Optional) {
    identifier = string (Optional)
    location = string (Optional)
    mount_options = string (Optional)
    mount_point = string (Optional)
    type = string (Optional)
  }

  logs_config block "list" (Optional) {

    cloudwatch_logs block "list" (Optional) {
      group_name = string (Optional)
      status = string (Optional)
      stream_name = string (Optional)
    }

    s3_logs block "list" (Optional) {
      bucket_owner_access = string (Optional)
      encryption_disabled = bool (Optional)
      location = string (Optional)
      status = string (Optional)
    }
  }

  secondary_artifacts block "set" (Optional) {
    artifact_identifier = string (Required)
    type = string (Required)
    bucket_owner_access = string (Optional)
    encryption_disabled = bool (Optional)
    location = string (Optional)
    name = string (Optional)
    namespace_type = string (Optional)
    override_artifact_name = bool (Optional)
    packaging = string (Optional)
    path = string (Optional)
  }

  secondary_source_version block "set" (Optional) {
    source_identifier = string (Required)
    source_version = string (Required)
  }

  secondary_sources block "set" (Optional) {
    source_identifier = string (Required)
    type = string (Required)
    buildspec = string (Optional)
    git_clone_depth = number (Optional)
    insecure_ssl = bool (Optional)
    location = string (Optional)
    report_build_status = bool (Optional)

    auth block "list" (Optional) {
      resource = string (Required)
      type = string (Required)
    }

    build_status_config block "list" (Optional) {
      context = string (Optional)
      target_url = string (Optional)
    }

    git_submodules_config block "list" (Optional) {
      fetch_submodules = bool (Required)
    }
  }

  source block "list" (Required) {
    type = string (Required)
    buildspec = string (Optional)
    git_clone_depth = number (Optional)
    insecure_ssl = bool (Optional)
    location = string (Optional)
    report_build_status = bool (Optional)

    auth block "list" (Optional) {
      resource = string (Required)
      type = string (Required)
    }

    build_status_config block "list" (Optional) {
      context = string (Optional)
      target_url = string (Optional)
    }

    git_submodules_config block "list" (Optional) {
      fetch_submodules = bool (Required)
    }
  }

  vpc_config block "list" (Optional) {
    security_group_ids = ['set', 'string'] (Required)
    subnets = ['set', 'string'] (Required)
    vpc_id = string (Required)
  }
}
