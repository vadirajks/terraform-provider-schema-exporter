resource "aws_config_configuration_recorder" "name" {
  role_arn = string (Required)
  id = string (Optional, Computed)
  name = string (Optional)
  region = string (Optional, Computed)

  recording_group block "list" (Optional) {
    all_supported = bool (Optional)
    include_global_resource_types = bool (Optional)
    resource_types = ['set', 'string'] (Optional)

    exclusion_by_resource_types block "list" (Optional) {
      resource_types = ['set', 'string'] (Optional)
    }

    recording_strategy block "list" (Optional) {
      use_only = string (Optional)
    }
  }

  recording_mode block "list" (Optional) {
    recording_frequency = string (Optional)

    recording_mode_override block "list" (Optional) {
      recording_frequency = string (Required)
      resource_types = ['set', 'string'] (Required)
      description = string (Optional)
    }
  }
}
