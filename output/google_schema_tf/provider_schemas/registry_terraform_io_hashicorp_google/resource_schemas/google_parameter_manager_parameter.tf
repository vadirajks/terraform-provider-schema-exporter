resource "google_parameter_manager_parameter" "name" {
  parameter_id = string (Required)
  create_time = string (Computed)
  effective_labels = ['map', 'string'] (Computed)
  format = string (Optional)
  id = string (Optional, Computed)
  kms_key = string (Optional)
  labels = ['map', 'string'] (Optional)
  name = string (Computed)
  policy_member = ['list', ['object', {'iam_policy_name_principal': 'string', 'iam_policy_uid_principal': 'string'}]] (Computed)
  project = string (Optional, Computed)
  terraform_labels = ['map', 'string'] (Computed)
  update_time = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
