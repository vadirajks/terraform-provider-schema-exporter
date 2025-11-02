resource "aws_elasticsearch_domain_policy" "name" {
  access_policies = string (Required)
  domain_name = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    delete = string (Optional)
    update = string (Optional)
  }
}
