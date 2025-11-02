resource "aws_s3control_object_lambda_access_point" "name" {
  name = string (Required)
  account_id = string (Optional, Computed)
  alias = string (Computed)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  configuration block "list" (Required) {
    supporting_access_point = string (Required)
    allowed_features = ['set', 'string'] (Optional)
    cloud_watch_metrics_enabled = bool (Optional)

    transformation_configuration block "set" (Required) {
      actions = ['set', 'string'] (Required)

      content_transformation block "list" (Required) {

        aws_lambda block "list" (Required) {
          function_arn = string (Required)
          function_payload = string (Optional)
        }
      }
    }
  }
}
