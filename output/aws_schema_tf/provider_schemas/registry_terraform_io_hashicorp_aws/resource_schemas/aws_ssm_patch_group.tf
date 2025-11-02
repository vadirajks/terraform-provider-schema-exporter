resource "aws_ssm_patch_group" "name" {
  baseline_id = string (Required)
  patch_group = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
