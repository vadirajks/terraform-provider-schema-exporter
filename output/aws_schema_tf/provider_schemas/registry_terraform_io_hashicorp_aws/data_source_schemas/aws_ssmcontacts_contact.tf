data "aws_ssmcontacts_contact" "name" {
  arn = string (Required)
  alias = string (Computed)
  display_name = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional, Computed)
  type = string (Computed)
}
