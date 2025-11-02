resource "google_data_loss_prevention_discovery_config" "name" {
  location = string (Required)
  parent = string (Required)
  create_time = string (Computed)
  display_name = string (Optional)
  errors = ['list', ['object', {'details': ['list', ['object', {'code': 'number', 'details': ['list', ['map', 'string']], 'message': 'string'}]], 'timestamp': 'string'}]] (Computed)
  id = string (Optional, Computed)
  inspect_templates = ['list', 'string'] (Optional)
  last_run_time = string (Computed)
  name = string (Computed)
  status = string (Optional)
  update_time = string (Computed)

  actions block "list" (Optional) {

    export_data block "list" (Optional) {

      profile_table block "list" (Optional) {
        dataset_id = string (Optional)
        project_id = string (Optional)
        table_id = string (Optional)
      }
    }

    pub_sub_notification block "list" (Optional) {
      detail_of_message = string (Optional)
      event = string (Optional)
      topic = string (Optional)

      pubsub_condition block "list" (Optional) {

        expressions block "list" (Optional) {
          logical_operator = string (Optional)

          conditions block "list" (Optional) {
            minimum_risk_score = string (Optional)
            minimum_sensitivity_score = string (Optional)
          }
        }
      }
    }

    publish_to_dataplex_catalog block "list" (Optional) {
    }

    tag_resources block "list" (Optional) {
      lower_data_risk_to_low = bool (Optional)
      profile_generations_to_tag = ['list', 'string'] (Optional)

      tag_conditions block "list" (Optional) {

        sensitivity_score block "list" (Optional) {
          score = string (Required)
        }

        tag block "list" (Optional) {
          namespaced_value = string (Optional)
        }
      }
    }
  }

  org_config block "list" (Optional) {
    project_id = string (Optional)

    location block "list" (Optional) {
      folder_id = string (Optional)
      organization_id = string (Optional)
    }
  }

  other_cloud_starting_location block "list" (Optional) {

    aws_location block "list" (Optional) {
      account_id = string (Optional)
      all_asset_inventory_assets = bool (Optional)
    }
  }

  targets block "list" (Optional) {

    big_query_target block "list" (Optional) {

      cadence block "list" (Optional) {

        inspect_template_modified_cadence block "list" (Optional) {
          frequency = string (Optional)
        }

        schema_modified_cadence block "list" (Optional) {
          frequency = string (Optional)
          types = ['list', 'string'] (Optional)
        }

        table_modified_cadence block "list" (Optional) {
          frequency = string (Optional)
          types = ['list', 'string'] (Optional)
        }
      }

      conditions block "list" (Optional) {
        created_after = string (Optional)
        type_collection = string (Optional)

        or_conditions block "list" (Optional) {
          min_age = string (Optional)
          min_row_count = number (Optional)
        }

        types block "list" (Optional) {
          types = ['list', 'string'] (Optional)
        }
      }

      disabled block "list" (Optional) {
      }

      filter block "list" (Optional) {

        other_tables block "list" (Optional) {
        }

        table_reference block "list" (Optional) {
          dataset_id = string (Required)
          table_id = string (Required)
        }

        tables block "list" (Optional) {

          include_regexes block "list" (Optional) {

            patterns block "list" (Optional) {
              dataset_id_regex = string (Optional)
              project_id_regex = string (Optional)
              table_id_regex = string (Optional)
            }
          }
        }
      }
    }

    cloud_sql_target block "list" (Optional) {

      conditions block "list" (Optional) {
        database_engines = ['list', 'string'] (Optional)
        types = ['list', 'string'] (Optional)
      }

      disabled block "list" (Optional) {
      }

      filter block "list" (Required) {

        collection block "list" (Optional) {

          include_regexes block "list" (Optional) {

            patterns block "list" (Optional) {
              database_regex = string (Optional)
              database_resource_name_regex = string (Optional)
              instance_regex = string (Optional)
              project_id_regex = string (Optional)
            }
          }
        }

        database_resource_reference block "list" (Optional) {
          database = string (Required)
          database_resource = string (Required)
          instance = string (Required)
          project_id = string (Required)
        }

        others block "list" (Optional) {
        }
      }

      generation_cadence block "list" (Optional) {
        refresh_frequency = string (Optional)

        inspect_template_modified_cadence block "list" (Optional) {
          frequency = string (Required)
        }

        schema_modified_cadence block "list" (Optional) {
          frequency = string (Optional)
          types = ['list', 'string'] (Optional)
        }
      }
    }

    cloud_storage_target block "list" (Optional) {

      conditions block "list" (Optional) {
        created_after = string (Optional)
        min_age = string (Optional)

        cloud_storage_conditions block "list" (Optional) {
          included_bucket_attributes = ['list', 'string'] (Optional)
          included_object_attributes = ['list', 'string'] (Optional)
        }
      }

      disabled block "list" (Optional) {
      }

      filter block "list" (Required) {

        cloud_storage_resource_reference block "list" (Optional) {
          bucket_name = string (Optional)
          project_id = string (Optional)
        }

        collection block "list" (Optional) {

          include_regexes block "list" (Optional) {

            patterns block "list" (Optional) {

              cloud_storage_regex block "list" (Optional) {
                bucket_name_regex = string (Optional)
                project_id_regex = string (Optional)
              }
            }
          }
        }

        others block "list" (Optional) {
        }
      }

      generation_cadence block "list" (Optional) {
        refresh_frequency = string (Optional)

        inspect_template_modified_cadence block "list" (Optional) {
          frequency = string (Optional)
        }
      }
    }

    other_cloud_target block "list" (Optional) {

      conditions block "list" (Optional) {
        min_age = string (Optional)

        amazon_s3_bucket_conditions block "list" (Optional) {
          bucket_types = ['list', 'string'] (Optional)
          object_storage_classes = ['list', 'string'] (Optional)
        }
      }

      data_source_type block "list" (Optional) {
        data_source = string (Optional)
      }

      disabled block "list" (Optional) {
      }

      filter block "list" (Required) {

        collection block "list" (Optional) {

          include_regexes block "list" (Optional) {

            patterns block "list" (Optional) {

              amazon_s3_bucket_regex block "list" (Optional) {
                bucket_name_regex = string (Optional)

                aws_account_regex block "list" (Optional) {
                  account_id_regex = string (Optional)
                }
              }
            }
          }
        }

        others block "list" (Optional) {
        }

        single_resource block "list" (Optional) {

          amazon_s3_bucket block "list" (Optional) {
            bucket_name = string (Optional)

            aws_account block "list" (Optional) {
              account_id = string (Optional)
            }
          }
        }
      }

      generation_cadence block "list" (Optional) {
        refresh_frequency = string (Optional)

        inspect_template_modified_cadence block "list" (Optional) {
          frequency = string (Optional)
        }
      }
    }

    secrets_target block "list" (Optional) {
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
