resource "aws_route53domains_delegation_signer_record" "name" {
  domain_name = string (Required)
  dnssec_key_id = string (Computed)
  id = string (Computed)

  signing_attributes block "list" (Optional) {
    algorithm = number (Required)
    flags = number (Required)
    public_key = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
