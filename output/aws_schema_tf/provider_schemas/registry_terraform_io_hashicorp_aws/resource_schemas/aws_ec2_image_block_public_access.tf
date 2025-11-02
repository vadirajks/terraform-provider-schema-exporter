resource "aws_ec2_image_block_public_access" "name" {
  state = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    update = string (Optional)
  }
}
