resource "google_artifact_registry_repository" "name" {
  format = string (Required)
  repository_id = string (Required)
  cleanup_policy_dry_run = bool (Optional)
  create_time = string (Computed)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  kms_key_name = string (Optional)
  labels = ['map', 'string'] (Optional)
  location = string (Optional, Computed)
  mode = string (Optional)
  name = string (Computed)
  project = string (Optional, Computed)
  registry_uri = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)
  update_time = string (Computed)

  cleanup_policies block "set" (Optional) {
    id = string (Required)
    action = string (Optional)

    condition block "list" (Optional) {
      newer_than = string (Optional)
      older_than = string (Optional)
      package_name_prefixes = ['list', 'string'] (Optional)
      tag_prefixes = ['list', 'string'] (Optional)
      tag_state = string (Optional)
      version_name_prefixes = ['list', 'string'] (Optional)
    }

    most_recent_versions block "list" (Optional) {
      keep_count = number (Optional)
      package_name_prefixes = ['list', 'string'] (Optional)
    }
  }

  docker_config block "list" (Optional) {
    immutable_tags = bool (Optional)
  }

  maven_config block "list" (Optional) {
    allow_snapshot_overwrites = bool (Optional)
    version_policy = string (Optional)
  }

  remote_repository_config block "list" (Optional) {
    description = string (Optional)
    disable_upstream_validation = bool (Optional)

    apt_repository block "list" (Optional) {

      public_repository block "list" (Optional) {
        repository_base = string (Required)
        repository_path = string (Required)
      }
    }

    common_repository block "list" (Optional) {
      uri = string (Required)
    }

    docker_repository block "list" (Optional) {
      public_repository = string (Optional)

      custom_repository block "list" (Optional) {
        uri = string (Optional)
      }
    }

    maven_repository block "list" (Optional) {
      public_repository = string (Optional)

      custom_repository block "list" (Optional) {
        uri = string (Optional)
      }
    }

    npm_repository block "list" (Optional) {
      public_repository = string (Optional)

      custom_repository block "list" (Optional) {
        uri = string (Optional)
      }
    }

    python_repository block "list" (Optional) {
      public_repository = string (Optional)

      custom_repository block "list" (Optional) {
        uri = string (Optional)
      }
    }

    upstream_credentials block "list" (Optional) {

      username_password_credentials block "list" (Optional) {
        password_secret_version = string (Optional)
        username = string (Optional)
      }
    }

    yum_repository block "list" (Optional) {

      public_repository block "list" (Optional) {
        repository_base = string (Required)
        repository_path = string (Required)
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  virtual_repository_config block "list" (Optional) {

    upstream_policies block "list" (Optional) {
      id = string (Optional)
      priority = number (Optional)
      repository = string (Optional)
    }
  }

  vulnerability_scanning_config block "list" (Optional) {
    enablement_config = string (Optional)
    enablement_state = string (Computed)
    enablement_state_reason = string (Computed)
  }
}
