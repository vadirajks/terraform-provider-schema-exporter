resource "aws_prometheus_query_logging_configuration" "name" {
  workspace_id = string (Required)
  region = string (Optional, Computed)

  destination block "list" (Optional) {

    cloudwatch_logs block "list" (Optional) {
      log_group_arn = string (Required)
    }

    filters block "list" (Optional) {
      qsp_threshold = number (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
