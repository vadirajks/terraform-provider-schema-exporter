resource "aws_devicefarm_upload" "name" {
  name = string (Required)
  project_arn = string (Required)
  type = string (Required)
  arn = string (Computed)
  category = string (Computed)
  content_type = string (Optional)
  id = string (Optional, Computed)
  metadata = string (Computed)
  region = string (Optional, Computed)
  url = string (Computed)
}
