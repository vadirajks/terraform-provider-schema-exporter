data "google_parameter_manager_parameters" "name" {
  filter = string (Optional)
  id = string (Optional, Computed)
  parameters = ['list', ['object', {'create_time': 'string', 'effective_labels': ['map', 'string'], 'format': 'string', 'kms_key': 'string', 'labels': ['map', 'string'], 'name': 'string', 'parameter_id': 'string', 'policy_member': ['list', ['object', {'iam_policy_name_principal': 'string', 'iam_policy_uid_principal': 'string'}]], 'project': 'string', 'terraform_labels': ['map', 'string'], 'update_time': 'string'}]] (Computed)
  project = string (Optional, Computed)
}
