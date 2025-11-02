resource "aws_ecrpublic_repository_policy" "name" {
  policy = string (Required)
  repository_name = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  registry_id = string (Computed)
}
