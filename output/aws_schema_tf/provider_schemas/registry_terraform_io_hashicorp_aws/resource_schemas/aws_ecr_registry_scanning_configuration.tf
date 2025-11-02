resource "aws_ecr_registry_scanning_configuration" "name" {
  scan_type = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  registry_id = string (Computed)

  rule block "set" (Optional) {
    scan_frequency = string (Required)

    repository_filter block "set" (Required) {
      filter = string (Required)
      filter_type = string (Required)
    }
  }
}
