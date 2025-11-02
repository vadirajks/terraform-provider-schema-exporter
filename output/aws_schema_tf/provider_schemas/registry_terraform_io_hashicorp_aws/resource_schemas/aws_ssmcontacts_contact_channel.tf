resource "aws_ssmcontacts_contact_channel" "name" {
  contact_id = string (Required)
  name = string (Required)
  type = string (Required)
  activation_status = string (Computed)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  delivery_address block "list" (Required) {
    simple_address = string (Required)
  }
}
