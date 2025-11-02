resource "aws_iot_billing_group" "name" {
  name = string (Required)
  arn = string (Computed)
  id = string (Computed)
  metadata = ['list', ['object', {'creation_date': 'string'}]] (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)
  version = number (Computed)

  properties block "list" (Optional) {
    description = string (Optional)
  }
}
