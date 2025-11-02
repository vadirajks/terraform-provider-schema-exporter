resource "aws_iam_organizations_features" "name" {
  enabled_features = ['set', 'string'] (Required)
  id = string (Computed)
}
