resource "aws_licensemanager_license_configuration" "name" {
  license_counting_type = string (Required)
  name = string (Required)
  arn = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  license_count = number (Optional)
  license_count_hard_limit = bool (Optional)
  license_rules = ['list', 'string'] (Optional)
  owner_account_id = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
