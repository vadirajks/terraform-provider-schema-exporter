resource "google_data_loss_prevention_job_trigger" "name" {
  parent = string (Required)
  create_time = string (Computed)
  description = string (Optional)
  display_name = string (Optional)
  id = string (Optional, Computed)
  last_run_time = string (Computed)
  name = string (Computed)
  status = string (Optional)
  trigger_id = string (Optional, Computed)
  update_time = string (Computed)

  inspect_job block "list" (Optional) {
    inspect_template_name = string (Optional)

    actions block "list" (Optional) {

      deidentify block "list" (Optional) {
        cloud_storage_output = string (Required)
        file_types_to_transform = ['list', 'string'] (Optional)

        transformation_config block "list" (Optional) {
          deidentify_template = string (Optional)
          image_redact_template = string (Optional)
          structured_deidentify_template = string (Optional)
        }

        transformation_details_storage_config block "list" (Optional) {

          table block "list" (Required) {
            dataset_id = string (Required)
            project_id = string (Required)
            table_id = string (Optional)
          }
        }
      }

      job_notification_emails block "list" (Optional) {
      }

      pub_sub block "list" (Optional) {
        topic = string (Required)
      }

      publish_findings_to_cloud_data_catalog block "list" (Optional) {
      }

      publish_findings_to_dataplex_catalog block "list" (Optional) {
      }

      publish_summary_to_cscc block "list" (Optional) {
      }

      publish_to_stackdriver block "list" (Optional) {
      }

      save_findings block "list" (Optional) {

        output_config block "list" (Required) {
          output_schema = string (Optional)

          storage_path block "list" (Optional) {
            path = string (Required)
          }

          table block "list" (Optional) {
            dataset_id = string (Required)
            project_id = string (Required)
            table_id = string (Optional)
          }
        }
      }
    }

    inspect_config block "list" (Optional) {
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
          create_time = string (Computed)
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
        max_findings_per_item = number (Optional)
        max_findings_per_request = number (Optional)

        max_findings_per_info_type block "list" (Optional) {
          max_findings = number (Optional)

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

        info_types block "list" (Optional) {
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

              hotword_regex block "list" (Optional) {
                group_indexes = ['list', 'number'] (Optional)
                pattern = string (Optional)
              }

              proximity block "list" (Optional) {
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

            hotword_regex block "list" (Optional) {
              group_indexes = ['list', 'number'] (Optional)
              pattern = string (Optional)
            }

            likelihood_adjustment block "list" (Optional) {
              fixed_likelihood = string (Optional)
              relative_likelihood = number (Optional)
            }

            proximity block "list" (Optional) {
              window_after = number (Optional)
              window_before = number (Optional)
            }
          }
        }
      }
    }

    storage_config block "list" (Required) {

      big_query_options block "list" (Optional) {
        rows_limit = number (Optional)
        rows_limit_percent = number (Optional)
        sample_method = string (Optional)

        excluded_fields block "list" (Optional) {
          name = string (Required)
        }

        identifying_fields block "list" (Optional) {
          name = string (Required)
        }

        included_fields block "list" (Optional) {
          name = string (Required)
        }

        table_reference block "list" (Required) {
          dataset_id = string (Required)
          project_id = string (Required)
          table_id = string (Required)
        }
      }

      cloud_storage_options block "list" (Optional) {
        bytes_limit_per_file = number (Optional)
        bytes_limit_per_file_percent = number (Optional)
        file_types = ['list', 'string'] (Optional)
        files_limit_percent = number (Optional)
        sample_method = string (Optional)

        file_set block "list" (Required) {
          url = string (Optional)

          regex_file_set block "list" (Optional) {
            bucket_name = string (Required)
            exclude_regex = ['list', 'string'] (Optional)
            include_regex = ['list', 'string'] (Optional)
          }
        }
      }

      datastore_options block "list" (Optional) {

        kind block "list" (Required) {
          name = string (Required)
        }

        partition_id block "list" (Required) {
          project_id = string (Required)
          namespace_id = string (Optional)
        }
      }

      hybrid_options block "list" (Optional) {
        description = string (Optional)
        labels = ['map', 'string'] (Optional)
        required_finding_label_keys = ['list', 'string'] (Optional)

        table_options block "list" (Optional) {

          identifying_fields block "list" (Optional) {
            name = string (Required)
          }
        }
      }

      timespan_config block "list" (Optional) {
        enable_auto_population_of_timespan_config = bool (Optional)
        end_time = string (Optional)
        start_time = string (Optional)

        timestamp_field block "list" (Optional) {
          name = string (Required)
        }
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  triggers block "list" (Required) {

    manual block "list" (Optional) {
    }

    schedule block "list" (Optional) {
      recurrence_period_duration = string (Optional)
    }
  }
}
