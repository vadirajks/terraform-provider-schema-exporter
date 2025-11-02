resource "aws_cloudsearch_domain_service_access_policy" "name" {
  access_policy = string (Required)
  domain_name = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    delete = string (Optional)
    update = string (Optional)
  }
}
