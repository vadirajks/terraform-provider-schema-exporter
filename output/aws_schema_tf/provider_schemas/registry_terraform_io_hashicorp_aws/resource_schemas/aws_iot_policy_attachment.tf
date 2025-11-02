resource "aws_iot_policy_attachment" "name" {
  policy = string (Required)
  target = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
