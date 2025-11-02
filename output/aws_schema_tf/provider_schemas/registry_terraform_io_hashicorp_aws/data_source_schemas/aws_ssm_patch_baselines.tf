data "aws_ssm_patch_baselines" "name" {
  baseline_identities = ['list', ['object', {'baseline_description': 'string', 'baseline_id': 'string', 'baseline_name': 'string', 'default_baseline': 'bool', 'operating_system': 'string'}]] (Computed)
  default_baselines = bool (Optional)
  region = string (Optional, Computed)

  filter block "list" (Optional) {
    key = string (Required)
    values = ['set', 'string'] (Required)
  }
}
