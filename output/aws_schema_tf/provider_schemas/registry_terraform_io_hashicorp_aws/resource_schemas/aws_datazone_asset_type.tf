resource "aws_datazone_asset_type" "name" {
  domain_identifier = string (Required)
  name = string (Required)
  owning_project_identifier = string (Required)
  created_at = string (Computed)
  created_by = string (Computed)
  description = string (Optional)
  region = string (Optional, Computed)
  revision = string (Computed)

  forms_input block "set" (Optional) {
    map_block_key = string (Required)
    type_identifier = string (Required)
    type_revision = string (Required)
    required = bool (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
  }
}
