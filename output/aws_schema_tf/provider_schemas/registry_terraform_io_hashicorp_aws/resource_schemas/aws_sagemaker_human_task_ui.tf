resource "aws_sagemaker_human_task_ui" "name" {
  human_task_ui_name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  ui_template block "list" (Required) {
    content = string (Optional)
    content_sha256 = string (Computed)
    url = string (Computed)
  }
}
