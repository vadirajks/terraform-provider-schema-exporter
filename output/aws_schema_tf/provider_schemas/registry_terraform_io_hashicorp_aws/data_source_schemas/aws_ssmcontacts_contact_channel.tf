data "aws_ssmcontacts_contact_channel" "name" {
  arn = string (Required)
  activation_status = string (Computed)
  contact_id = string (Computed)
  delivery_address = ['list', ['object', {'simple_address': 'string'}]] (Computed)
  id = string (Optional, Computed)
  name = string (Computed)
  region = string (Optional, Computed)
  type = string (Computed)
}
