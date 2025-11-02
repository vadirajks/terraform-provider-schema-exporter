resource "aws_transfer_profile" "name" {
  as2_id = string (Required)
  profile_type = string (Required)
  arn = string (Computed)
  certificate_ids = ['set', 'string'] (Optional)
  id = string (Optional, Computed)
  profile_id = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
