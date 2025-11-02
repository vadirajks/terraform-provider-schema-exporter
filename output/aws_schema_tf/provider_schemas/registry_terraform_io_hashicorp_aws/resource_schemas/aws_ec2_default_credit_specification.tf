resource "aws_ec2_default_credit_specification" "name" {
  cpu_credits = string (Required)
  instance_family = string (Required)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    update = string (Optional)
  }
}
