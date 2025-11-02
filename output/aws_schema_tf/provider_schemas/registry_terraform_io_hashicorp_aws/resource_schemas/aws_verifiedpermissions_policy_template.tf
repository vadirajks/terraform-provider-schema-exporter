resource "aws_verifiedpermissions_policy_template" "name" {
  policy_store_id = string (Required)
  statement = string (Required)
  created_date = string (Computed)
  description = string (Optional)
  id = string (Computed)
  policy_template_id = string (Computed)
  region = string (Optional, Computed)
}
