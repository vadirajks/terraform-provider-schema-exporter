resource "aws_ce_cost_category" "name" {
  name = string (Required)
  rule_version = string (Required)
  arn = string (Computed)
  default_value = string (Optional)
  effective_end = string (Computed)
  effective_start = string (Optional, Computed)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  rule block "list" (Required) {
    type = string (Optional)
    value = string (Optional)

    inherited_value block "list" (Optional) {
      dimension_key = string (Optional)
      dimension_name = string (Optional)
    }

    rule block "list" (Optional) {

      and block "set" (Optional) {

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

      or block "set" (Optional) {

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

      tags block "list" (Optional) {
        key = string (Optional)
        match_options = ['set', 'string'] (Optional)
        values = ['set', 'string'] (Optional)
      }
    }
  }

  split_charge_rule block "set" (Optional) {
    method = string (Required)
    source = string (Required)
    targets = ['set', 'string'] (Required)

    parameter block "set" (Optional) {
      type = string (Optional)
      values = ['list', 'string'] (Optional)
    }
  }
}
