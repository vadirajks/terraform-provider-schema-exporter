data "aws_cloudwatch_contributor_managed_insight_rules" "name" {
  resource_arn = string (Required)
  managed_rules = ['list', ['object', {'resource_arn': 'string', 'rule_state': ['list', ['object', {'rule_name': 'string', 'state': 'string'}]], 'template_name': 'string'}]] (Computed)
  region = string (Optional, Computed)
}
