resource "google_data_loss_prevention_inspect_template" "name" {
  parent = string (Required)
  description = string (Optional)
  display_name = string (Optional)
  id = string (Optional, Computed)
  name = string (Computed)
  template_id = string (Optional, Computed)

  inspect_config block "list" (Optional) {
    content_options = ['list', 'string'] (Optional)
    exclude_info_types = bool (Optional)
    include_quote = bool (Optional)
    min_likelihood = string (Optional)

    custom_info_types block "list" (Optional) {
      exclusion_type = string (Optional)
      likelihood = string (Optional)

      dictionary block "list" (Optional) {

        cloud_storage_path block "list" (Optional) {
          path = string (Required)
        }

        word_list block "list" (Optional) {
          words = ['list', 'string'] (Required)
        }
      }

      info_type block "list" (Required) {
        name = string (Required)
        version = string (Optional)

        sensitivity_score block "list" (Optional) {
          score = string (Required)
        }
      }

      regex block "list" (Optional) {
        pattern = string (Required)
        group_indexes = ['list', 'number'] (Optional)
      }

      sensitivity_score block "list" (Optional) {
        score = string (Required)
      }

      stored_type block "list" (Optional) {
        name = string (Required)
      }

      surrogate_type block "list" (Optional) {
      }
    }

    info_types block "list" (Optional) {
      name = string (Required)
      version = string (Optional)

      sensitivity_score block "list" (Optional) {
        score = string (Required)
      }
    }

    limits block "list" (Optional) {
      max_findings_per_item = number (Required)
      max_findings_per_request = number (Required)

      max_findings_per_info_type block "list" (Optional) {
        max_findings = number (Required)

        info_type block "list" (Optional) {
          name = string (Required)
          version = string (Optional)

          sensitivity_score block "list" (Optional) {
            score = string (Required)
          }
        }
      }
    }

    rule_set block "list" (Optional) {

      info_types block "list" (Required) {
        name = string (Required)
        version = string (Optional)

        sensitivity_score block "list" (Optional) {
          score = string (Required)
        }
      }

      rules block "list" (Required) {

        exclusion_rule block "list" (Optional) {
          matching_type = string (Required)

          dictionary block "list" (Optional) {

            cloud_storage_path block "list" (Optional) {
              path = string (Required)
            }

            word_list block "list" (Optional) {
              words = ['list', 'string'] (Required)
            }
          }

          exclude_by_hotword block "list" (Optional) {

            hotword_regex block "list" (Required) {
              pattern = string (Required)
              group_indexes = ['list', 'number'] (Optional)
            }

            proximity block "list" (Required) {
              window_after = number (Optional)
              window_before = number (Optional)
            }
          }

          exclude_info_types block "list" (Optional) {

            info_types block "list" (Required) {
              name = string (Required)
              version = string (Optional)

              sensitivity_score block "list" (Optional) {
                score = string (Required)
              }
            }
          }

          regex block "list" (Optional) {
            pattern = string (Required)
            group_indexes = ['list', 'number'] (Optional)
          }
        }

        hotword_rule block "list" (Optional) {

          hotword_regex block "list" (Required) {
            pattern = string (Required)
            group_indexes = ['list', 'number'] (Optional)
          }

          likelihood_adjustment block "list" (Required) {
            fixed_likelihood = string (Optional)
            relative_likelihood = number (Optional)
          }

          proximity block "list" (Required) {
            window_after = number (Optional)
            window_before = number (Optional)
          }
        }
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
