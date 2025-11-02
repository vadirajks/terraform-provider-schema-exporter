resource "google_colab_notebook_execution" "name" {
  display_name = string (Required)
  gcs_output_uri = string (Required)
  location = string (Required)
  execution_timeout = string (Optional)
  execution_user = string (Optional)
  id = string (Optional, Computed)
  notebook_execution_job_id = string (Optional, Computed)
  notebook_runtime_template_resource_name = string (Optional)
  project = string (Optional, Computed)
  service_account = string (Optional)

  dataform_repository_source block "list" (Optional) {
    dataform_repository_resource_name = string (Required)
    commit_sha = string (Optional)
  }

  direct_notebook_source block "list" (Optional) {
    content = string (Required)
  }

  gcs_notebook_source block "list" (Optional) {
    uri = string (Required)
    generation = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
