resource "aws_ecr_registry_policy" "name" {
  policy = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  registry_id = string (Computed)
}
