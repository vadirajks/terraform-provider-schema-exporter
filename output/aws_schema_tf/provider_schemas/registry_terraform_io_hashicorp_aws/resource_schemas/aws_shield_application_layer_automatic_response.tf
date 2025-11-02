resource "aws_shield_application_layer_automatic_response" "name" {
  action = string (Required)
  resource_arn = string (Required)
  id = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
