resource "aws_elasticache_user_group_association" "name" {
  user_group_id = string (Required)
  user_id = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
