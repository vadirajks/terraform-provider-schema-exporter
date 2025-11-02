data "aws_canonical_user_id" "name" {
  display_name = string (Computed)
  id = string (Optional, Computed)
}
