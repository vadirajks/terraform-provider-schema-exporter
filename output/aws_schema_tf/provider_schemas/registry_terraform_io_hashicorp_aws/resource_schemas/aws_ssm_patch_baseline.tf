resource "aws_ssm_patch_baseline" "name" {
  name = string (Required)
  approved_patches = ['set', 'string'] (Optional)
  approved_patches_compliance_level = string (Optional)
  approved_patches_enable_non_security = bool (Optional)
  arn = string (Computed)
  available_security_updates_compliance_status = string (Optional, Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  json = string (Computed)
  operating_system = string (Optional)
  region = string (Optional, Computed)
  rejected_patches = ['set', 'string'] (Optional)
  rejected_patches_action = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  approval_rule block "list" (Optional) {
    approve_after_days = number (Optional)
    approve_until_date = string (Optional)
    compliance_level = string (Optional)
    enable_non_security = bool (Optional)

    patch_filter block "list" (Required) {
      key = string (Required)
      values = ['list', 'string'] (Required)
    }
  }

  global_filter block "list" (Optional) {
    key = string (Required)
    values = ['list', 'string'] (Required)
  }

  source block "list" (Optional) {
    configuration = string (Required)
    name = string (Required)
    products = ['list', 'string'] (Required)
  }
}
