resource "google_recaptcha_enterprise_key" "name" {
  display_name = string (Required)
  create_time = string (Computed)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  name = string (Computed)
  project = string (Optional, Computed)
  terraform_labels = ['map', 'string'] (Computed)

  android_settings block "list" (Optional) {
    allow_all_package_names = bool (Optional)
    allowed_package_names = ['list', 'string'] (Optional)
  }

  ios_settings block "list" (Optional) {
    allow_all_bundle_ids = bool (Optional)
    allowed_bundle_ids = ['list', 'string'] (Optional)
  }

  testing_options block "list" (Optional) {
    testing_challenge = string (Optional, Computed)
    testing_score = number (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  waf_settings block "list" (Optional) {
    waf_feature = string (Required)
    waf_service = string (Required)
  }

  web_settings block "list" (Optional) {
    integration_type = string (Required)
    allow_all_domains = bool (Optional)
    allow_amp_traffic = bool (Optional)
    allowed_domains = ['list', 'string'] (Optional)
    challenge_security_preference = string (Optional, Computed)
  }
}
