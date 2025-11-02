resource "aws_cloudfront_monitoring_subscription" "name" {
  distribution_id = string (Required)
  id = string (Optional, Computed)

  monitoring_subscription block "list" (Required) {

    realtime_metrics_subscription_config block "list" (Required) {
      realtime_metrics_subscription_status = string (Required)
    }
  }
}
