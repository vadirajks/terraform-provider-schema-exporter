resource "aws_budgets_budget" "name" {
  budget_type = string (Required)
  time_unit = string (Required)
  account_id = string (Optional, Computed)
  arn = string (Computed)
  billing_view_arn = string (Optional)
  id = string (Optional, Computed)
  limit_amount = string (Optional, Computed)
  limit_unit = string (Optional, Computed)
  name = string (Optional, Computed)
  name_prefix = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  time_period_end = string (Optional)
  time_period_start = string (Optional, Computed)

  auto_adjust_data block "list" (Optional) {
    auto_adjust_type = string (Required)
    last_auto_adjust_time = string (Computed)

    historical_options block "list" (Optional) {
      budget_adjustment_period = number (Required)
      lookback_available_periods = number (Computed)
    }
  }

  cost_filter block "set" (Optional) {
    name = string (Required)
    values = ['list', 'string'] (Required)
  }

  cost_types block "list" (Optional) {
    include_credit = bool (Optional)
    include_discount = bool (Optional)
    include_other_subscription = bool (Optional)
    include_recurring = bool (Optional)
    include_refund = bool (Optional)
    include_subscription = bool (Optional)
    include_support = bool (Optional)
    include_tax = bool (Optional)
    include_upfront = bool (Optional)
    use_amortized = bool (Optional)
    use_blended = bool (Optional)
  }

  notification block "set" (Optional) {
    comparison_operator = string (Required)
    notification_type = string (Required)
    threshold = number (Required)
    threshold_type = string (Required)
    subscriber_email_addresses = ['set', 'string'] (Optional)
    subscriber_sns_topic_arns = ['set', 'string'] (Optional)
  }

  planned_limit block "set" (Optional) {
    amount = string (Required)
    start_time = string (Required)
    unit = string (Required)
  }
}
