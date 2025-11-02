resource "aws_ssm_activation" "name" {
  iam_role = string (Required)
  activation_code = string (Computed)
  description = string (Optional)
  expiration_date = string (Optional, Computed)
  expired = bool (Computed)
  id = string (Optional, Computed)
  name = string (Optional)
  region = string (Optional, Computed)
  registration_count = number (Computed)
  registration_limit = number (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
