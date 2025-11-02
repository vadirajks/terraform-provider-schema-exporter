data "aws_dynamodb_tables" "name" {
  names = ['list', 'string'] (Computed)
  region = string (Optional, Computed)
}
