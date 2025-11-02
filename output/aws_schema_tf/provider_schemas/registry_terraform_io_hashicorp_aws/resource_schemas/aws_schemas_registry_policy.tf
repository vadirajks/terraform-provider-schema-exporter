resource "aws_schemas_registry_policy" "name" {
  policy = string (Required)
  registry_name = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
