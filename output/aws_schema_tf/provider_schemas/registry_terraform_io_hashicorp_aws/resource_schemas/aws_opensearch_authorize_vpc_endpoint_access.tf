resource "aws_opensearch_authorize_vpc_endpoint_access" "name" {
  account = string (Required)
  domain_name = string (Required)
  authorized_principal = ['list', ['object', {'principal': 'string', 'principal_type': 'string'}]] (Computed)
  region = string (Optional, Computed)
}
