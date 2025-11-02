resource "aws_codestarconnections_host" "name" {
  name = string (Required)
  provider_endpoint = string (Required)
  provider_type = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  status = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  vpc_configuration block "list" (Optional) {
    security_group_ids = ['set', 'string'] (Required)
    subnet_ids = ['set', 'string'] (Required)
    vpc_id = string (Required)
    tls_certificate = string (Optional)
  }
}
