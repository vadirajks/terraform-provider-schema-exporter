resource "aws_acm_certificate" "name" {
  arn = string (Computed)
  certificate_authority_arn = string (Optional)
  certificate_body = string (Optional)
  certificate_chain = string (Optional)
  domain_name = string (Optional, Computed)
  domain_validation_options = ['set', ['object', {'domain_name': 'string', 'resource_record_name': 'string', 'resource_record_type': 'string', 'resource_record_value': 'string'}]] (Computed)
  early_renewal_duration = string (Optional)
  id = string (Optional, Computed)
  key_algorithm = string (Optional, Computed)
  not_after = string (Computed)
  not_before = string (Computed)
  pending_renewal = bool (Computed)
  private_key = string (Optional)
  region = string (Optional, Computed)
  renewal_eligibility = string (Computed)
  renewal_summary = ['list', ['object', {'renewal_status': 'string', 'renewal_status_reason': 'string', 'updated_at': 'string'}]] (Computed)
  status = string (Computed)
  subject_alternative_names = ['set', 'string'] (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  type = string (Computed)
  validation_emails = ['list', 'string'] (Computed)
  validation_method = string (Optional, Computed)

  options block "list" (Optional) {
    certificate_transparency_logging_preference = string (Optional)
    export = string (Optional, Computed)
  }

  validation_option block "set" (Optional) {
    domain_name = string (Required)
    validation_domain = string (Required)
  }
}
