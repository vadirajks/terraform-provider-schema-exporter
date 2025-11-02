resource "aws_servicecatalog_organizations_access" "name" {
  enabled = bool (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
