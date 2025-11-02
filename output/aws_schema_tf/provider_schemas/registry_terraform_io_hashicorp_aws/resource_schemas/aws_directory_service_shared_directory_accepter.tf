resource "aws_directory_service_shared_directory_accepter" "name" {
  shared_directory_id = string (Required)
  id = string (Optional, Computed)
  method = string (Computed)
  notes = string (Computed)
  owner_account_id = string (Computed)
  owner_directory_id = string (Computed)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
