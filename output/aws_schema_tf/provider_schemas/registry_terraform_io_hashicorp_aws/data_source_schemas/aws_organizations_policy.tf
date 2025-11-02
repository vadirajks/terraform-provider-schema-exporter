data "aws_organizations_policy" "name" {
  policy_id = string (Required)
  arn = string (Computed)
  aws_managed = bool (Computed)
  content = string (Computed)
  description = string (Computed)
  id = string (Optional, Computed)
  name = string (Computed)
  type = string (Computed)
}
