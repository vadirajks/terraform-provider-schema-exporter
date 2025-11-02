data "aws_dynamodb_table_item" "name" {
  key = string (Required)
  table_name = string (Required)
  expression_attribute_names = ['map', 'string'] (Optional)
  id = string (Optional, Computed)
  item = string (Computed)
  projection_expression = string (Optional)
  region = string (Optional, Computed)
}
