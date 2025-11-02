resource "aws_opensearch_package_association" "name" {
  domain_name = string (Required)
  package_id = string (Required)
  id = string (Optional, Computed)
  reference_path = string (Computed)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
