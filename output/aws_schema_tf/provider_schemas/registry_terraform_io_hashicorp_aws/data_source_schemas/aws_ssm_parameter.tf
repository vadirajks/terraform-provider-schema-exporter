data "aws_ssm_parameter" "name" {
  name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  insecure_value = string (Computed)
  region = string (Optional, Computed)
  type = string (Computed)
  value = string (Computed)
  version = number (Computed)
  with_decryption = bool (Optional)
}
