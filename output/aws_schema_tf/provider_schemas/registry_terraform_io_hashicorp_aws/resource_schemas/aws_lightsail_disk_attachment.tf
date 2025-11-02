resource "aws_lightsail_disk_attachment" "name" {
  disk_name = string (Required)
  disk_path = string (Required)
  instance_name = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
