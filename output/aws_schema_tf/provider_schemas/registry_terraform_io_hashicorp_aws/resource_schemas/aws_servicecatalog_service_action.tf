resource "aws_servicecatalog_service_action" "name" {
  name = string (Required)
  accept_language = string (Optional)
  description = string (Optional, Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  definition block "list" (Required) {
    name = string (Required)
    version = string (Required)
    assume_role = string (Optional)
    parameters = string (Optional)
    type = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
