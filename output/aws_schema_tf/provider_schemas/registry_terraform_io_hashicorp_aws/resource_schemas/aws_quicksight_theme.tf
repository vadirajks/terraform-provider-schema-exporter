resource "aws_quicksight_theme" "name" {
  base_theme_id = string (Required)
  name = string (Required)
  theme_id = string (Required)
  arn = string (Computed)
  aws_account_id = string (Optional, Computed)
  created_time = string (Computed)
  id = string (Optional, Computed)
  last_updated_time = string (Computed)
  region = string (Optional, Computed)
  status = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  version_description = string (Optional)
  version_number = number (Computed)

  configuration block "list" (Optional) {

    data_color_palette block "list" (Optional) {
      colors = ['list', 'string'] (Optional)
      empty_fill_color = string (Optional)
      min_max_gradient = ['list', 'string'] (Optional)
    }

    sheet block "list" (Optional) {

      tile block "list" (Optional) {

        border block "list" (Optional) {
          show = bool (Optional)
        }
      }

      tile_layout block "list" (Optional) {

        gutter block "list" (Optional) {
          show = bool (Optional)
        }

        margin block "list" (Optional) {
          show = bool (Optional)
        }
      }
    }

    typography block "list" (Optional) {

      font_families block "list" (Optional) {
        font_family = string (Optional)
      }
    }

    ui_color_palette block "list" (Optional) {
      accent = string (Optional)
      accent_foreground = string (Optional)
      danger = string (Optional)
      danger_foreground = string (Optional)
      dimension = string (Optional)
      dimension_foreground = string (Optional)
      measure = string (Optional)
      measure_foreground = string (Optional)
      primary_background = string (Optional)
      primary_foreground = string (Optional)
      secondary_background = string (Optional)
      secondary_foreground = string (Optional)
      success = string (Optional)
      success_foreground = string (Optional)
      warning = string (Optional)
      warning_foreground = string (Optional)
    }
  }

  permissions block "set" (Optional) {
    actions = ['set', 'string'] (Required)
    principal = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
