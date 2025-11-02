resource "aws_iam_openid_connect_provider" "name" {
  client_id_list = ['set', 'string'] (Required)
  url = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  thumbprint_list = ['list', 'string'] (Optional, Computed)
}
