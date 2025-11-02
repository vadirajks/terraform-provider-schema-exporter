data "aws_workspaces_image" "name" {
  image_id = string (Required)
  description = string (Computed)
  id = string (Optional, Computed)
  name = string (Computed)
  operating_system_type = string (Computed)
  region = string (Optional, Computed)
  required_tenancy = string (Computed)
  state = string (Computed)
}
