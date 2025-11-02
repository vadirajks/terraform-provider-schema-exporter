resource "aws_notificationscontacts_email_contact" "name" {
  email_address = string (Required)
  name = string (Required)
  arn = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)
}
