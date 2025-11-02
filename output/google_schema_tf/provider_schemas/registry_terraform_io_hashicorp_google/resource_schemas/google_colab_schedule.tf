resource "google_colab_schedule" "name" {
  cron = string (Required)
  display_name = string (Required)
  location = string (Required)
  max_concurrent_run_count = string (Required)
  allow_queueing = bool (Optional)
  desired_state = string (Optional)
  end_time = string (Optional)
  id = string (Optional, Computed)
  max_run_count = string (Optional)
  name = string (Computed)
  project = string (Optional, Computed)
  start_time = string (Optional, Computed)
  state = string (Computed)

  create_notebook_execution_job_request block "list" (Required) {

    notebook_execution_job block "list" (Required) {
      display_name = string (Required)
      gcs_output_uri = string (Required)
      notebook_runtime_template_resource_name = string (Required)
      execution_timeout = string (Optional)
      execution_user = string (Optional)
      service_account = string (Optional)

      dataform_repository_source block "list" (Optional) {
        dataform_repository_resource_name = string (Required)
        commit_sha = string (Optional)
      }

      gcs_notebook_source block "list" (Optional) {
        uri = string (Required)
        generation = string (Optional)
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
