resource "aws_ce_anomaly_subscription" "name" {
  frequency = string (Required)
  monitor_arn_list = ['list', 'string'] (Required)
  name = string (Required)
  account_id = string (Optional, Computed)
  arn = string (Computed)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  subscriber block "set" (Required) {
    address = string (Required)
    type = string (Required)
  }

  threshold_expression block "list" (Optional) {

    and block "set" (Optional) {

      cost_category block "list" (Optional) {
        key = string (Optional)
        match_options = ['set', 'string'] (Optional)
        values = ['set', 'string'] (Optional)
      }

      dimension block "list" (Optional) {
        key = string (Optional)
        match_options = ['set', 'string'] (Optional)
        values = ['set', 'string'] (Optional)
      }

      tags block "list" (Optional) {
        key = string (Optional)
        match_options = ['set', 'string'] (Optional)
        values = ['set', 'string'] (Optional)
      }
    }

    cost_category block "list" (Optional) {
      key = string (Optional)
      match_options = ['set', 'string'] (Optional)
      values = ['set', 'string'] (Optional)
    }

    dimension block "list" (Optional) {
      key = string (Optional)
      match_options = ['set', 'string'] (Optional)
      values = ['set', 'string'] (Optional)
    }

    not block "list" (Optional) {

      cost_category block "list" (Optional) {
        key = string (Optional)
        match_options = ['set', 'string'] (Optional)
        values = ['set', 'string'] (Optional)
      }

      dimension block "list" (Optional) {
        key = string (Optional)
        match_options = ['set', 'string'] (Optional)
        values = ['set', 'string'] (Optional)
      }

      tags block "list" (Optional) {
        key = string (Optional)
        match_options = ['set', 'string'] (Optional)
        values = ['set', 'string'] (Optional)
      }
    }

    or block "set" (Optional) {

      cost_category block "list" (Optional) {
        key = string (Optional)
        match_options = ['set', 'string'] (Optional)
        values = ['set', 'string'] (Optional)
      }

      dimension block "list" (Optional) {
        key = string (Optional)
        match_options = ['set', 'string'] (Optional)
        values = ['set', 'string'] (Optional)
      }

      tags block "list" (Optional) {
        key = string (Optional)
        match_options = ['set', 'string'] (Optional)
        values = ['set', 'string'] (Optional)
      }
    }

    tags block "list" (Optional) {
      key = string (Optional)
      match_options = ['set', 'string'] (Optional)
      values = ['set', 'string'] (Optional)
    }
  }
}
