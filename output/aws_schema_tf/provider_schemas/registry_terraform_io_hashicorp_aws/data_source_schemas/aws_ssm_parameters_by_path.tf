data "aws_ssm_parameters_by_path" "name" {
  path = string (Required)
  arns = ['list', 'string'] (Computed)
  id = string (Optional, Computed)
  names = ['list', 'string'] (Computed)
  recursive = bool (Optional)
  region = string (Optional, Computed)
  types = ['list', 'string'] (Computed)
  values = ['list', 'string'] (Computed)
  with_decryption = bool (Optional)
}
