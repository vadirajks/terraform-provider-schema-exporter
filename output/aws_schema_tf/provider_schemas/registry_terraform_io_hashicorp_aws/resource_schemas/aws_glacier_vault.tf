resource "aws_glacier_vault" "name" {
  name = string (Required)
  access_policy = string (Optional)
  arn = string (Computed)
  id = string (Optional, Computed)
  location = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  notification block "list" (Optional) {
    events = ['set', 'string'] (Required)
    sns_topic = string (Required)
  }
}
