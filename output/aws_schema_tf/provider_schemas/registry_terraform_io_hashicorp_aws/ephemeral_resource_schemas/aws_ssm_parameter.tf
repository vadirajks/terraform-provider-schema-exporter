resource "aws_ssm_parameter" "name" { // Ephemeral Resource
  arn = string (Required)
  name = string (Computed)
  region = string (Optional, Computed)
  type = string (Computed)
  value = string (Computed)
  version = number (Computed)
  with_decryption = bool (Optional, Computed)
}
