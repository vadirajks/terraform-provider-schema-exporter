resource "aws_codeartifact_repository" "name" {
  domain = string (Required)
  repository = string (Required)
  administrator_account = string (Computed)
  arn = string (Computed)
  description = string (Optional)
  domain_owner = string (Optional, Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  external_connections block "list" (Optional) {
    external_connection_name = string (Required)
    package_format = string (Computed)
    status = string (Computed)
  }

  upstream block "list" (Optional) {
    repository_name = string (Required)
  }
}
