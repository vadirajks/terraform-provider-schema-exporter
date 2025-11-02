data "aws_servicecatalog_provisioning_artifacts" "name" {
  product_id = string (Required)
  accept_language = string (Optional)
  id = string (Optional, Computed)
  provisioning_artifact_details = ['list', ['object', {'active': 'bool', 'created_time': 'string', 'description': 'string', 'guidance': 'string', 'id': 'string', 'name': 'string', 'type': 'string'}]] (Computed)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
