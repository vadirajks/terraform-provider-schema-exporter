data "aws_iam_openid_connect_provider" "name" {
  arn = string (Optional, Computed)
  client_id_list = ['list', 'string'] (Computed)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional, Computed)
  thumbprint_list = ['list', 'string'] (Computed)
  url = string (Optional, Computed)
}
