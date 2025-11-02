resource "aws_prometheus_resource_policy" "name" {
  policy_document = string (Required)
  workspace_id = string (Required)
  region = string (Optional, Computed)
  revision_id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
