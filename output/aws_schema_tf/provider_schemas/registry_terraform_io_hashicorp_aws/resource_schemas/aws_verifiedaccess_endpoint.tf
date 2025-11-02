resource "aws_verifiedaccess_endpoint" "name" {
  attachment_type = string (Required)
  endpoint_type = string (Required)
  verified_access_group_id = string (Required)
  application_domain = string (Optional)
  description = string (Optional)
  device_validation_domain = string (Computed)
  domain_certificate_arn = string (Optional)
  endpoint_domain = string (Computed)
  endpoint_domain_prefix = string (Optional)
  id = string (Optional, Computed)
  policy_document = string (Optional)
  region = string (Optional, Computed)
  security_group_ids = ['set', 'string'] (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  verified_access_instance_id = string (Computed)

  cidr_options block "list" (Optional) {
    cidr = string (Required)
    protocol = string (Optional)
    subnet_ids = ['set', 'string'] (Optional)

    port_range block "set" (Required) {
      from_port = number (Required)
      to_port = number (Required)
    }
  }

  load_balancer_options block "list" (Optional) {
    load_balancer_arn = string (Optional)
    port = number (Optional)
    protocol = string (Optional)
    subnet_ids = ['set', 'string'] (Optional)

    port_range block "set" (Optional) {
      from_port = number (Required)
      to_port = number (Required)
    }
  }

  network_interface_options block "list" (Optional) {
    network_interface_id = string (Optional)
    port = number (Optional)
    protocol = string (Optional)

    port_range block "set" (Optional) {
      from_port = number (Required)
      to_port = number (Required)
    }
  }

  rds_options block "list" (Optional) {
    port = number (Optional)
    protocol = string (Optional)
    rds_db_cluster_arn = string (Optional)
    rds_db_instance_arn = string (Optional)
    rds_db_proxy_arn = string (Optional)
    rds_endpoint = string (Optional)
    subnet_ids = ['set', 'string'] (Optional)
  }

  sse_specification block "list" (Optional) {
    customer_managed_key_enabled = bool (Optional)
    kms_key_arn = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
