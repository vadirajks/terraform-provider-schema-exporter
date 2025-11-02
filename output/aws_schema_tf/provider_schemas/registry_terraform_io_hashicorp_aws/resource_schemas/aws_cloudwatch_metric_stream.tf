resource "aws_cloudwatch_metric_stream" "name" {
  firehose_arn = string (Required)
  output_format = string (Required)
  role_arn = string (Required)
  arn = string (Computed)
  creation_date = string (Computed)
  id = string (Optional, Computed)
  include_linked_accounts_metrics = bool (Optional)
  last_update_date = string (Computed)
  name = string (Optional, Computed)
  name_prefix = string (Optional, Computed)
  region = string (Optional, Computed)
  state = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  exclude_filter block "set" (Optional) {
    namespace = string (Required)
    metric_names = ['set', 'string'] (Optional)
  }

  include_filter block "set" (Optional) {
    namespace = string (Required)
    metric_names = ['set', 'string'] (Optional)
  }

  statistics_configuration block "set" (Optional) {
    additional_statistics = ['set', 'string'] (Required)

    include_metric block "set" (Required) {
      metric_name = string (Required)
      namespace = string (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
