data "aws_vpclattice_auth_policy" "name" {
  resource_identifier = string (Required)
  id = string (Optional, Computed)
  policy = string (Optional)
  region = string (Optional, Computed)
  state = string (Optional)
}
