resource "aws_volume_attachment" "name" {
  device_name = string (Required)
  instance_id = string (Required)
  volume_id = string (Required)
  force_detach = bool (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  skip_destroy = bool (Optional)
  stop_instance_before_detaching = bool (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
