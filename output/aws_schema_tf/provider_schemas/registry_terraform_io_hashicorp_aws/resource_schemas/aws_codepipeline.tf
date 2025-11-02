resource "aws_codepipeline" "name" {
  name = string (Required)
  role_arn = string (Required)
  arn = string (Computed)
  execution_mode = string (Optional)
  id = string (Optional, Computed)
  pipeline_type = string (Optional)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  trigger_all = ['list', ['object', {'git_configuration': ['list', ['object', {'pull_request': ['list', ['object', {'branches': ['list', ['object', {'excludes': ['list', 'string'], 'includes': ['list', 'string']}]], 'events': ['list', 'string'], 'file_paths': ['list', ['object', {'excludes': ['list', 'string'], 'includes': ['list', 'string']}]]}]], 'push': ['list', ['object', {'branches': ['list', ['object', {'excludes': ['list', 'string'], 'includes': ['list', 'string']}]], 'file_paths': ['list', ['object', {'excludes': ['list', 'string'], 'includes': ['list', 'string']}]], 'tags': ['list', ['object', {'excludes': ['list', 'string'], 'includes': ['list', 'string']}]]}]], 'source_action_name': 'string'}]], 'provider_type': 'string'}]] (Computed)

  artifact_store block "set" (Required) {
    location = string (Required)
    type = string (Required)
    region = string (Optional)

    encryption_key block "list" (Optional) {
      id = string (Required)
      type = string (Required)
    }
  }

  stage block "list" (Required) {
    name = string (Required)

    action block "list" (Required) {
      category = string (Required)
      name = string (Required)
      owner = string (Required)
      provider = string (Required)
      version = string (Required)
      configuration = ['map', 'string'] (Optional)
      input_artifacts = ['list', 'string'] (Optional)
      namespace = string (Optional)
      output_artifacts = ['list', 'string'] (Optional)
      region = string (Optional, Computed)
      role_arn = string (Optional)
      run_order = number (Optional, Computed)
      timeout_in_minutes = number (Optional)
    }

    before_entry block "list" (Optional) {

      condition block "list" (Required) {
        result = string (Optional)

        rule block "list" (Required) {
          name = string (Required)
          commands = ['list', 'string'] (Optional)
          configuration = ['map', 'string'] (Optional)
          input_artifacts = ['list', 'string'] (Optional)
          region = string (Optional)
          role_arn = string (Optional)
          timeout_in_minutes = number (Optional)

          rule_type_id block "list" (Required) {
            category = string (Required)
            provider = string (Required)
            owner = string (Optional)
            version = string (Optional)
          }
        }
      }
    }

    on_failure block "list" (Optional) {
      result = string (Optional)

      condition block "list" (Optional) {
        result = string (Optional)

        rule block "list" (Required) {
          name = string (Required)
          commands = ['list', 'string'] (Optional)
          configuration = ['map', 'string'] (Optional)
          input_artifacts = ['list', 'string'] (Optional)
          region = string (Optional)
          role_arn = string (Optional)
          timeout_in_minutes = number (Optional)

          rule_type_id block "list" (Required) {
            category = string (Required)
            provider = string (Required)
            owner = string (Optional)
            version = string (Optional)
          }
        }
      }

      retry_configuration block "list" (Optional) {
        retry_mode = string (Optional)
      }
    }

    on_success block "list" (Optional) {

      condition block "list" (Required) {
        result = string (Optional)

        rule block "list" (Required) {
          name = string (Required)
          commands = ['list', 'string'] (Optional)
          configuration = ['map', 'string'] (Optional)
          input_artifacts = ['list', 'string'] (Optional)
          region = string (Optional)
          role_arn = string (Optional)
          timeout_in_minutes = number (Optional)

          rule_type_id block "list" (Required) {
            category = string (Required)
            provider = string (Required)
            owner = string (Optional)
            version = string (Optional)
          }
        }
      }
    }
  }

  trigger block "list" (Optional) {
    provider_type = string (Required)

    git_configuration block "list" (Required) {
      source_action_name = string (Required)

      pull_request block "list" (Optional) {
        events = ['list', 'string'] (Optional)

        branches block "list" (Optional) {
          excludes = ['list', 'string'] (Optional)
          includes = ['list', 'string'] (Optional)
        }

        file_paths block "list" (Optional) {
          excludes = ['list', 'string'] (Optional)
          includes = ['list', 'string'] (Optional)
        }
      }

      push block "list" (Optional) {

        branches block "list" (Optional) {
          excludes = ['list', 'string'] (Optional)
          includes = ['list', 'string'] (Optional)
        }

        file_paths block "list" (Optional) {
          excludes = ['list', 'string'] (Optional)
          includes = ['list', 'string'] (Optional)
        }

        tags block "list" (Optional) {
          excludes = ['list', 'string'] (Optional)
          includes = ['list', 'string'] (Optional)
        }
      }
    }
  }

  variable block "list" (Optional) {
    name = string (Required)
    default_value = string (Optional)
    description = string (Optional)
  }
}
