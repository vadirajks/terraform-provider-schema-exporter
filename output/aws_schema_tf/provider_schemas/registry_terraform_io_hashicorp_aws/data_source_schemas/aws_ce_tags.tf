data "aws_ce_tags" "name" {
  id = string (Optional, Computed)
  search_string = string (Optional)
  tag_key = string (Optional)
  tags = ['set', 'string'] (Computed)

  filter block "list" (Optional) {

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

  sort_by block "list" (Optional) {
    key = string (Optional)
    sort_order = string (Optional)
  }

  time_period block "list" (Required) {
    end = string (Required)
    start = string (Required)
  }
}
