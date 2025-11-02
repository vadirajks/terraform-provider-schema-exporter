resource "aws_bedrock_guardrail_version" "name" {
  guardrail_arn = string (Required)
  description = string (Optional)
  region = string (Optional, Computed)
  skip_destroy = bool (Optional)
  version = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
