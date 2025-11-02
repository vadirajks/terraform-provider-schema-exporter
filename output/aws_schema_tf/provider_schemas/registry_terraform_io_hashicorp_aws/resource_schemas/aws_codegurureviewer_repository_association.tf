resource "aws_codegurureviewer_repository_association" "name" {
  arn = string (Computed)
  association_id = string (Computed)
  connection_arn = string (Computed)
  id = string (Optional, Computed)
  name = string (Computed)
  owner = string (Computed)
  provider_type = string (Computed)
  region = string (Optional, Computed)
  s3_repository_details = ['list', ['object', {'bucket_name': 'string', 'code_artifacts': ['list', ['object', {'build_artifacts_object_key': 'string', 'source_code_artifacts_object_key': 'string'}]]}]] (Computed)
  state = string (Computed)
  state_reason = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  kms_key_details block "list" (Optional) {
    encryption_option = string (Optional)
    kms_key_id = string (Optional)
  }

  repository block "list" (Required) {

    bitbucket block "list" (Optional) {
      connection_arn = string (Required)
      name = string (Required)
      owner = string (Required)
    }

    codecommit block "list" (Optional) {
      name = string (Required)
    }

    github_enterprise_server block "list" (Optional) {
      connection_arn = string (Required)
      name = string (Required)
      owner = string (Required)
    }

    s3_bucket block "list" (Optional) {
      bucket_name = string (Required)
      name = string (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
