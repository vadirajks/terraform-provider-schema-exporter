resource "google_identity_platform_project_default_config" "name" {
  id = string (Optional, Computed)
  name = string (Computed)
  project = string (Optional, Computed)

  sign_in block "list"  (Optional){
    allow_duplicate_emails = bool (Optional)
    hash_config = ['list', ['object', {'algorithm': 'string', 'memory_cost': 'number', 'rounds': 'number', 'salt_separator': 'string', 'signer_key': 'string'}]] (Computed)

    anonymous block "list"  (Optional){
      enabled = bool (Required)
    }

    email block "list"  (Optional){
      enabled = bool (Optional)
      password_required = bool (Optional)
    }

    phone_number block "list"  (Optional){
      enabled = bool (Optional)
      test_phone_numbers = ['map', 'string'] (Optional)
    }
  }

  timeouts block "single"  (Optional){
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
