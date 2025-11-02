resource "aws_datazone_glossary" "name" {
  domain_identifier = string (Required)
  name = string (Required)
  owning_project_identifier = string (Required)
  description = string (Optional)
  id = string (Computed)
  region = string (Optional, Computed)
  status = string (Optional)
}
