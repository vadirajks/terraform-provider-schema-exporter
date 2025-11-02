resource "google_cloudbuild_trigger" "name" {
  create_time = string (Computed)
  description = string (Optional)
  disabled = bool (Optional)
  filename = string (Optional)
  filter = string (Optional)
  id = string (Optional, Computed)
  ignored_files = ['list', 'string'] (Optional)
  include_build_logs = string (Optional)
  included_files = ['list', 'string'] (Optional)
  location = string (Optional)
  name = string (Optional, Computed)
  project = string (Optional, Computed)
  service_account = string (Optional)
  substitutions = ['map', 'string'] (Optional)
  tags = ['list', 'string'] (Optional)
  trigger_id = string (Computed)

  approval_config block "list" (Optional) {
    approval_required = bool (Optional)
  }

  bitbucket_server_trigger_config block "list" (Optional) {
    bitbucket_server_config_resource = string (Required)
    project_key = string (Required)
    repo_slug = string (Required)

    pull_request block "list" (Optional) {
      branch = string (Required)
      comment_control = string (Optional)
      invert_regex = bool (Optional)
    }

    push block "list" (Optional) {
      branch = string (Optional)
      invert_regex = bool (Optional)
      tag = string (Optional)
    }
  }

  build block "list" (Optional) {
    images = ['list', 'string'] (Optional)
    logs_bucket = string (Optional)
    queue_ttl = string (Optional)
    substitutions = ['map', 'string'] (Optional)
    tags = ['list', 'string'] (Optional)
    timeout = string (Optional)

    artifacts block "list" (Optional) {
      images = ['list', 'string'] (Optional)

      maven_artifacts block "list" (Optional) {
        artifact_id = string (Optional)
        group_id = string (Optional)
        path = string (Optional)
        repository = string (Optional)
        version = string (Optional)
      }

      npm_packages block "list" (Optional) {
        package_path = string (Optional)
        repository = string (Optional)
      }

      objects block "list" (Optional) {
        location = string (Optional)
        paths = ['list', 'string'] (Optional)
        timing = ['list', ['object', {'end_time': 'string', 'start_time': 'string'}]] (Computed)
      }

      python_packages block "list" (Optional) {
        paths = ['list', 'string'] (Optional)
        repository = string (Optional)
      }
    }

    available_secrets block "list" (Optional) {

      secret_manager block "list" (Required) {
        env = string (Required)
        version_name = string (Required)
      }
    }

    options block "list" (Optional) {
      disk_size_gb = number (Optional)
      dynamic_substitutions = bool (Optional)
      env = ['list', 'string'] (Optional)
      log_streaming_option = string (Optional)
      logging = string (Optional)
      machine_type = string (Optional)
      requested_verify_option = string (Optional)
      secret_env = ['list', 'string'] (Optional)
      source_provenance_hash = ['list', 'string'] (Optional)
      substitution_option = string (Optional)
      worker_pool = string (Optional)

      volumes block "list" (Optional) {
        name = string (Optional)
        path = string (Optional)
      }
    }

    secret block "list" (Optional) {
      kms_key_name = string (Required)
      secret_env = ['map', 'string'] (Optional)
    }

    source block "list" (Optional) {

      repo_source block "list" (Optional) {
        repo_name = string (Required)
        branch_name = string (Optional)
        commit_sha = string (Optional)
        dir = string (Optional)
        invert_regex = bool (Optional)
        project_id = string (Optional)
        substitutions = ['map', 'string'] (Optional)
        tag_name = string (Optional)
      }

      storage_source block "list" (Optional) {
        bucket = string (Required)
        object = string (Required)
        generation = string (Optional)
      }
    }

    step block "list" (Required) {
      name = string (Required)
      allow_exit_codes = ['list', 'number'] (Optional)
      allow_failure = bool (Optional)
      args = ['list', 'string'] (Optional)
      dir = string (Optional)
      entrypoint = string (Optional)
      env = ['list', 'string'] (Optional)
      id = string (Optional)
      script = string (Optional)
      secret_env = ['list', 'string'] (Optional)
      timeout = string (Optional)
      timing = string (Optional)
      wait_for = ['list', 'string'] (Optional)

      volumes block "list" (Optional) {
        name = string (Required)
        path = string (Required)
      }
    }
  }

  developer_connect_event_config block "list" (Optional) {
    git_repository_link = string (Required)
    git_repository_link_type = string (Computed)

    pull_request block "list" (Optional) {
      branch = string (Optional)
      comment_control = string (Optional)
      invert_regex = bool (Optional)
    }

    push block "list" (Optional) {
      branch = string (Optional)
      invert_regex = bool (Optional)
      tag = string (Optional)
    }
  }

  git_file_source block "list" (Optional) {
    path = string (Required)
    repo_type = string (Required)
    bitbucket_server_config = string (Optional)
    github_enterprise_config = string (Optional)
    repository = string (Optional)
    revision = string (Optional)
    uri = string (Optional)
  }

  github block "list" (Optional) {
    enterprise_config_resource_name = string (Optional)
    name = string (Optional)
    owner = string (Optional)

    pull_request block "list" (Optional) {
      branch = string (Required)
      comment_control = string (Optional)
      invert_regex = bool (Optional)
    }

    push block "list" (Optional) {
      branch = string (Optional)
      invert_regex = bool (Optional)
      tag = string (Optional)
    }
  }

  pubsub_config block "list" (Optional) {
    topic = string (Required)
    service_account_email = string (Optional)
    state = string (Computed)
    subscription = string (Computed)
  }

  repository_event_config block "list" (Optional) {
    repository = string (Optional)

    pull_request block "list" (Optional) {
      branch = string (Optional)
      comment_control = string (Optional)
      invert_regex = bool (Optional)
    }

    push block "list" (Optional) {
      branch = string (Optional)
      invert_regex = bool (Optional)
      tag = string (Optional)
    }
  }

  source_to_build block "list" (Optional) {
    ref = string (Required)
    repo_type = string (Required)
    bitbucket_server_config = string (Optional)
    github_enterprise_config = string (Optional)
    repository = string (Optional)
    uri = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  trigger_template block "list" (Optional) {
    branch_name = string (Optional)
    commit_sha = string (Optional)
    dir = string (Optional)
    invert_regex = bool (Optional)
    project_id = string (Optional, Computed)
    repo_name = string (Optional)
    tag_name = string (Optional)
  }

  webhook_config block "list" (Optional) {
    secret = string (Required)
    state = string (Computed)
  }
}
