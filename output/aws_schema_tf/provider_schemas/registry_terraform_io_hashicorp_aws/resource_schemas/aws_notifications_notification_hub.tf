resource "aws_notifications_notification_hub" "name" {
  notification_hub_region = string (Required)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
