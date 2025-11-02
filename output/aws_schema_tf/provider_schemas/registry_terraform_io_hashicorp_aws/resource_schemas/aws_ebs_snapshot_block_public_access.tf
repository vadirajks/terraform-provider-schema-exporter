resource "aws_ebs_snapshot_block_public_access" "name" {
  state = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
