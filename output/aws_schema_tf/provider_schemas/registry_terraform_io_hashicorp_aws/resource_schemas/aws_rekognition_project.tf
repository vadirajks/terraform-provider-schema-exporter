resource "aws_rekognition_project" "name" {
  name = string (Required)
  arn = string (Computed)
  auto_update = string (Optional, Computed)
  feature = string (Optional)
  id = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
