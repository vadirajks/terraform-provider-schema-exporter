data "aws_datazone_environment_blueprint" "name" {
  domain_id = string (Required)
  managed = bool (Required)
  name = string (Required)
  blueprint_provider = string (Computed)
  description = string (Computed)
  id = string (Computed)
  region = string (Optional, Computed)
}
