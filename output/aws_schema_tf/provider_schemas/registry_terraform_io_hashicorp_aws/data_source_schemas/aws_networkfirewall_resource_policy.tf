data "aws_networkfirewall_resource_policy" "name" {
  resource_arn = string (Required)
  id = string (Optional, Computed)
  policy = string (Computed)
  region = string (Optional, Computed)
}
