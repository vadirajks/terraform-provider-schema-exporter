resource "google_apikeys_key" "name" {
  name = string (Required)
  display_name = string (Optional)
  id = string (Optional, Computed)
  key_string = string (Computed)
  project = string (Optional, Computed)
  service_account_email = string (Optional)
  uid = string (Computed)

  restrictions block "list" (Optional) {

    android_key_restrictions block "list" (Optional) {

      allowed_applications block "list" (Required) {
        package_name = string (Required)
        sha1_fingerprint = string (Required)
      }
    }

    api_targets block "list" (Optional) {
      service = string (Required)
      methods = ['list', 'string'] (Optional)
    }

    browser_key_restrictions block "list" (Optional) {
      allowed_referrers = ['list', 'string'] (Required)
    }

    ios_key_restrictions block "list" (Optional) {
      allowed_bundle_ids = ['list', 'string'] (Required)
    }

    server_key_restrictions block "list" (Optional) {
      allowed_ips = ['list', 'string'] (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
