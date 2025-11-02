resource "google_certificate_manager_certificate" "name" {
  name = string (Required)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  location = string (Optional)
  project = string (Optional, Computed)
  san_dnsnames = ['list', 'string'] (Computed)
  scope = string (Optional)
  terraform_labels = ['map', 'string'] (Computed)

  managed block "list" (Optional) {
    authorization_attempt_info = ['list', ['object', {'details': 'string', 'domain': 'string', 'failure_reason': 'string', 'state': 'string'}]] (Computed)
    dns_authorizations = ['list', 'string'] (Optional)
    domains = ['list', 'string'] (Optional)
    issuance_config = string (Optional)
    provisioning_issue = ['list', ['object', {'details': 'string', 'reason': 'string'}]] (Computed)
    state = string (Computed)
  }

  self_managed block "list" (Optional) {
    certificate_pem = string (Optional)
    pem_certificate = string (Optional)
    pem_private_key = string (Optional)
    private_key_pem = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
