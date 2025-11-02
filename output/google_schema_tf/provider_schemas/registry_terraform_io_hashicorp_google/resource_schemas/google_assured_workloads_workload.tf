resource "google_assured_workloads_workload" "name" {
  compliance_regime = string (Required)
  display_name = string (Required)
  location = string (Required)
  organization = string (Required)
  billing_account = string (Optional)
  compliance_status = ['list', ['object', {'acknowledged_violation_count': ['list', 'number'], 'active_violation_count': ['list', 'number']}]] (Computed)
  compliant_but_disallowed_services = ['list', 'string'] (Computed)
  create_time = string (Computed)
  effective_labels = ['map', 'string'] (Computed)
  ekm_provisioning_response = ['list', ['object', {'ekm_provisioning_error_domain': 'string', 'ekm_provisioning_error_mapping': 'string', 'ekm_provisioning_state': 'string'}]] (Computed)
  enable_sovereign_controls = bool (Optional)
  id = string (Optional, Computed)
  kaj_enrollment_state = string (Computed)
  labels = ['map', 'string'] (Optional)
  name = string (Computed)
  partner = string (Optional)
  partner_services_billing_account = string (Optional)
  provisioned_resources_parent = string (Optional)
  resources = ['list', ['object', {'resource_id': 'number', 'resource_type': 'string'}]] (Computed)
  saa_enrollment_response = ['list', ['object', {'setup_errors': ['list', 'string'], 'setup_status': 'string'}]] (Computed)
  terraform_labels = ['map', 'string'] (Computed)
  violation_notifications_enabled = bool (Optional, Computed)

  kms_settings block "list" (Optional) {
    next_rotation_time = string (Required)
    rotation_period = string (Required)
  }

  partner_permissions block "list" (Optional) {
    assured_workloads_monitoring = bool (Optional)
    data_logs_viewer = bool (Optional)
    service_access_approver = bool (Optional)
  }

  resource_settings block "list" (Optional) {
    display_name = string (Optional)
    resource_id = string (Optional)
    resource_type = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  workload_options block "list" (Optional) {
    kaj_enrollment_type = string (Optional)
  }
}
