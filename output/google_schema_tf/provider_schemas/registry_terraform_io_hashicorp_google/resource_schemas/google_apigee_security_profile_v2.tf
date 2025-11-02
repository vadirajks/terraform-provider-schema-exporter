resource "google_apigee_security_profile_v2" "name" {
  org_id = string (Required)
  profile_id = string (Required)
  create_time = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  name = string (Computed)
  update_time = string (Computed)

  profile_assessment_configs block "set" (Required) {
    assessment = string (Required)
    weight = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
