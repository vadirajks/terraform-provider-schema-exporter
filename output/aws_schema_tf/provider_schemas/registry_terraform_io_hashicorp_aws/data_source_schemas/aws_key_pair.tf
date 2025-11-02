data "aws_key_pair" "name" {
  arn = string (Computed)
  create_time = string (Computed)
  fingerprint = string (Computed)
  id = string (Optional, Computed)
  include_public_key = bool (Optional)
  key_name = string (Optional)
  key_pair_id = string (Optional)
  key_type = string (Computed)
  public_key = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional, Computed)

  filter block "set" (Optional) {
    name = string (Required)
    values = ['set', 'string'] (Required)
  }

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
