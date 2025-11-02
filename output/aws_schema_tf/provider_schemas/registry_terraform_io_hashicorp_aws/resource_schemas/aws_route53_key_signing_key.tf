resource "aws_route53_key_signing_key" "name" {
  hosted_zone_id = string (Required)
  key_management_service_arn = string (Required)
  name = string (Required)
  digest_algorithm_mnemonic = string (Computed)
  digest_algorithm_type = number (Computed)
  digest_value = string (Computed)
  dnskey_record = string (Computed)
  ds_record = string (Computed)
  flag = number (Computed)
  id = string (Optional, Computed)
  key_tag = number (Computed)
  public_key = string (Computed)
  signing_algorithm_mnemonic = string (Computed)
  signing_algorithm_type = number (Computed)
  status = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
