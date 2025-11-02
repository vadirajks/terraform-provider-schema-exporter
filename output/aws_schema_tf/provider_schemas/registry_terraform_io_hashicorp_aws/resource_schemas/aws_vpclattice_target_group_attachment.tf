resource "aws_vpclattice_target_group_attachment" "name" {
  target_group_identifier = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  target block "list" (Required) {
    id = string (Required)
    port = number (Optional, Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
