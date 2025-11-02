resource "aws_glue_user_defined_function" "name" {
  class_name = string (Required)
  database_name = string (Required)
  name = string (Required)
  owner_name = string (Required)
  owner_type = string (Required)
  arn = string (Computed)
  catalog_id = string (Optional)
  create_time = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  resource_uris block "set" (Optional) {
    resource_type = string (Required)
    uri = string (Required)
  }
}
