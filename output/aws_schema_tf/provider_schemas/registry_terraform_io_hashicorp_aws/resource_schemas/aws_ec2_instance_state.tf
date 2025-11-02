resource "aws_ec2_instance_state" "name" {
  instance_id = string (Required)
  state = string (Required)
  force = bool (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
