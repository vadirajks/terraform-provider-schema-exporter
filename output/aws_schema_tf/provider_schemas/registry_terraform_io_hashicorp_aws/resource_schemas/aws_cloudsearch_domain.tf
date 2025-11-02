resource "aws_cloudsearch_domain" "name" {
  name = string (Required)
  arn = string (Computed)
  document_service_endpoint = string (Computed)
  domain_id = string (Computed)
  id = string (Optional, Computed)
  multi_az = bool (Optional, Computed)
  region = string (Optional, Computed)
  search_service_endpoint = string (Computed)

  endpoint_options block "list" (Optional) {
    enforce_https = bool (Optional, Computed)
    tls_security_policy = string (Optional, Computed)
  }

  index_field block "set" (Optional) {
    name = string (Required)
    type = string (Required)
    analysis_scheme = string (Optional)
    default_value = string (Optional)
    facet = bool (Optional)
    highlight = bool (Optional)
    return = bool (Optional)
    search = bool (Optional)
    sort = bool (Optional)
    source_fields = string (Optional)
  }

  scaling_parameters block "list" (Optional) {
    desired_instance_type = string (Optional, Computed)
    desired_partition_count = number (Optional, Computed)
    desired_replication_count = number (Optional, Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
