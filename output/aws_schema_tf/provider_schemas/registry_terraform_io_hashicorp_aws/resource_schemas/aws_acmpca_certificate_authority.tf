resource "aws_acmpca_certificate_authority" "name" {
  arn = string (Computed)
  certificate = string (Computed)
  certificate_chain = string (Computed)
  certificate_signing_request = string (Computed)
  enabled = bool (Optional)
  id = string (Optional, Computed)
  key_storage_security_standard = string (Optional, Computed)
  not_after = string (Computed)
  not_before = string (Computed)
  permanent_deletion_time_in_days = number (Optional)
  region = string (Optional, Computed)
  serial = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  type = string (Optional)
  usage_mode = string (Optional, Computed)

  certificate_authority_configuration block "list" (Required) {
    key_algorithm = string (Required)
    signing_algorithm = string (Required)

    subject block "list" (Required) {
      common_name = string (Optional)
      country = string (Optional)
      distinguished_name_qualifier = string (Optional)
      generation_qualifier = string (Optional)
      given_name = string (Optional)
      initials = string (Optional)
      locality = string (Optional)
      organization = string (Optional)
      organizational_unit = string (Optional)
      pseudonym = string (Optional)
      state = string (Optional)
      surname = string (Optional)
      title = string (Optional)
    }
  }

  revocation_configuration block "list" (Optional) {

    crl_configuration block "list" (Optional) {
      custom_cname = string (Optional)
      enabled = bool (Optional)
      expiration_in_days = number (Optional)
      s3_bucket_name = string (Optional)
      s3_object_acl = string (Optional, Computed)
    }

    ocsp_configuration block "list" (Optional) {
      enabled = bool (Required)
      ocsp_custom_cname = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
  }
}
