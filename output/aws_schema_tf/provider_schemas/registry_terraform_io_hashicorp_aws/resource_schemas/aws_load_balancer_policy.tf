resource "aws_load_balancer_policy" "name" {
  load_balancer_name = string (Required)
  policy_name = string (Required)
  policy_type_name = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  policy_attribute block "set" (Optional) {
    name = string (Optional)
    value = string (Optional)
  }
}
