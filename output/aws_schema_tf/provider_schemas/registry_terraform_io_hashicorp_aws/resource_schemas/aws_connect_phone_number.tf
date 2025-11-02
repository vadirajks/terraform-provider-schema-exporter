resource "aws_connect_phone_number" "name" {
  country_code = string (Required)
  target_arn = string (Required)
  type = string (Required)
  arn = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  phone_number = string (Computed)
  prefix = string (Optional)
  region = string (Optional, Computed)
  status = ['list', ['object', {'message': 'string', 'status': 'string'}]] (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
