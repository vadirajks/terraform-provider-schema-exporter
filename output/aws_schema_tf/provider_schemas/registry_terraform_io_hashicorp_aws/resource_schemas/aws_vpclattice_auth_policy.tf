resource "aws_vpclattice_auth_policy" "name" {
  policy = string (Required)
  resource_identifier = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  state = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
