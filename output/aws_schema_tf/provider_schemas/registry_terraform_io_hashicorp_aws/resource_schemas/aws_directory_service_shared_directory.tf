resource "aws_directory_service_shared_directory" "name" {
  directory_id = string (Required)
  id = string (Optional, Computed)
  method = string (Optional)
  notes = string (Optional)
  region = string (Optional, Computed)
  shared_directory_id = string (Computed)

  target block "list" (Required) {
    id = string (Required)
    type = string (Optional)
  }

  timeouts block "single" (Optional) {
    delete = string (Optional)
  }
}
