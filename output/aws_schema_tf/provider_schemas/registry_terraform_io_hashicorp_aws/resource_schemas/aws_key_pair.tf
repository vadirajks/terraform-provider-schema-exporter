resource "aws_key_pair" "name" {
  public_key = string (Required)
  arn = string (Computed)
  fingerprint = string (Computed)
  id = string (Optional, Computed)
  key_name = string (Optional, Computed)
  key_name_prefix = string (Optional, Computed)
  key_pair_id = string (Computed)
  key_type = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
