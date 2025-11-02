resource "aws_organizations_policy_attachment" "name" {
  policy_id = string (Required)
  target_id = string (Required)
  id = string (Optional, Computed)
  skip_destroy = bool (Optional)
}
