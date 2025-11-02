resource "aws_iot_indexing_configuration" "name" {
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  thing_group_indexing_configuration block "list" (Optional) {
    thing_group_indexing_mode = string (Required)

    custom_field block "set" (Optional) {
      name = string (Optional)
      type = string (Optional)
    }

    managed_field block "set" (Optional) {
      name = string (Optional)
      type = string (Optional)
    }
  }

  thing_indexing_configuration block "list" (Optional) {
    thing_indexing_mode = string (Required)
    device_defender_indexing_mode = string (Optional)
    named_shadow_indexing_mode = string (Optional)
    thing_connectivity_indexing_mode = string (Optional)

    custom_field block "set" (Optional) {
      name = string (Optional)
      type = string (Optional)
    }

    filter block "list" (Optional) {
      named_shadow_names = ['set', 'string'] (Optional)
    }

    managed_field block "set" (Optional) {
      name = string (Optional)
      type = string (Optional)
    }
  }
}
