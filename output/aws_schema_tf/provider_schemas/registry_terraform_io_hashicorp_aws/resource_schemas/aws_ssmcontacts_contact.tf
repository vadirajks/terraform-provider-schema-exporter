resource "aws_ssmcontacts_contact" "name" {
  alias = string (Required)
  type = string (Required)
  arn = string (Computed)
  display_name = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
