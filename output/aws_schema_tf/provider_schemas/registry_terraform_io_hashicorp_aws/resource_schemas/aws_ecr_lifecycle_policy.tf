resource "aws_ecr_lifecycle_policy" "name" {
  policy = string (Required)
  repository = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  registry_id = string (Computed)
}
