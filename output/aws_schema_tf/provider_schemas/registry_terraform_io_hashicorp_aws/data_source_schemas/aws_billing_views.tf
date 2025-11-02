data "aws_billing_views" "name" {
  billing_view = ['list', ['object', {'arn': 'string', 'billing_view_type': 'string', 'description': 'string', 'name': 'string', 'owner_account_id': 'string'}]] (Computed)
  billing_view_types = ['list', 'string'] (Optional)
}
