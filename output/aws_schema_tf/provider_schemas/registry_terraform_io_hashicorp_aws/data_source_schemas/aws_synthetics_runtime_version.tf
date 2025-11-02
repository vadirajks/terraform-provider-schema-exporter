data "aws_synthetics_runtime_version" "name" {
  prefix = string (Required)
  deprecation_date = string (Computed)
  description = string (Computed)
  id = string (Computed)
  latest = bool (Optional)
  region = string (Optional, Computed)
  release_date = string (Computed)
  version = string (Optional)
  version_name = string (Computed)
}
