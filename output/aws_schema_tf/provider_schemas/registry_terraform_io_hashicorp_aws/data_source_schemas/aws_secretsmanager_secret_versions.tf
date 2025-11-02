data "aws_secretsmanager_secret_versions" "name" {
  secret_id = string (Required)
  arn = string (Computed)
  include_deprecated = bool (Optional)
  name = string (Computed)
  region = string (Optional, Computed)
  versions = ['list', ['object', {'created_time': 'string', 'last_accessed_date': 'string', 'version_id': 'string', 'version_stages': ['list', 'string']}]] (Computed)
}
