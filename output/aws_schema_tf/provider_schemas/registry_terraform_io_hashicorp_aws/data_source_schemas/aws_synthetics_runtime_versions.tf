data "aws_synthetics_runtime_versions" "name" {
  id = string (Computed)
  region = string (Optional, Computed)
  runtime_versions = ['list', ['object', {'deprecation_date': 'string', 'description': 'string', 'release_date': 'string', 'version_name': 'string'}]] (Computed)
}
