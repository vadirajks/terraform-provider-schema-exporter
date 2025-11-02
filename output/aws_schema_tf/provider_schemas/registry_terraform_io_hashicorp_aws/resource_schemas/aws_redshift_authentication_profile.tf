resource "aws_redshift_authentication_profile" "name" {
  authentication_profile_content = string (Required)
  authentication_profile_name = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
