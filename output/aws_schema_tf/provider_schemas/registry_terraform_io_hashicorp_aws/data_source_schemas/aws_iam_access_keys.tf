data "aws_iam_access_keys" "name" {
  user = string (Required)
  access_keys = ['set', ['object', {'access_key_id': 'string', 'create_date': 'string', 'status': 'string'}]] (Computed)
  id = string (Optional, Computed)
}
