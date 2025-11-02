resource "aws_imagebuilder_lifecycle_policy" "name" {
  execution_role = string (Required)
  name = string (Required)
  resource_type = string (Required)
  arn = string (Computed)
  description = string (Optional)
  id = string (Computed)
  region = string (Optional, Computed)
  status = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)

  policy_detail block "set" (Optional) {

    action block "list" (Optional) {
      type = string (Required)

      include_resources block "list" (Optional) {
        amis = bool (Optional, Computed)
        containers = bool (Optional, Computed)
        snapshots = bool (Optional, Computed)
      }
    }

    exclusion_rules block "list" (Optional) {
      tag_map = ['map', 'string'] (Optional)

      amis block "list" (Optional) {
        is_public = bool (Optional, Computed)
        regions = ['list', 'string'] (Optional)
        shared_accounts = ['list', 'string'] (Optional)
        tag_map = ['map', 'string'] (Optional)

        last_launched block "list" (Optional) {
          unit = string (Required)
          value = number (Required)
        }
      }
    }

    filter block "list" (Optional) {
      type = string (Required)
      value = number (Required)
      retain_at_least = number (Optional)
      unit = string (Optional)
    }
  }

  resource_selection block "list" (Optional) {
    tag_map = ['map', 'string'] (Optional)

    recipe block "set" (Optional) {
      name = string (Required)
      semantic_version = string (Required)
    }
  }
}
