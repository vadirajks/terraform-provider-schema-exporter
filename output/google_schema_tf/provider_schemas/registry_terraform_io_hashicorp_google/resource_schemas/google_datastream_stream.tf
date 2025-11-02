resource "google_datastream_stream" "name" {
  display_name = string (Required)
  location = string (Required)
  stream_id = string (Required)
  create_without_validation = bool (Optional)
  customer_managed_encryption_key = string (Optional)
  desired_state = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  name = string (Computed)
  project = string (Optional, Computed)
  state = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)

  backfill_all block "list" (Optional) {

    mongodb_excluded_objects block "list" (Optional) {

      databases block "list" (Required) {
        database = string (Required)

        collections block "list" (Optional) {
          collection = string (Required)

          fields block "list" (Optional) {
            field = string (Optional)
          }
        }
      }
    }

    mysql_excluded_objects block "list" (Optional) {

      mysql_databases block "list" (Required) {
        database = string (Required)

        mysql_tables block "list" (Optional) {
          table = string (Required)

          mysql_columns block "list" (Optional) {
            collation = string (Optional)
            column = string (Optional)
            data_type = string (Optional)
            length = number (Computed)
            nullable = bool (Optional)
            ordinal_position = number (Optional)
            primary_key = bool (Optional)
          }
        }
      }
    }

    oracle_excluded_objects block "list" (Optional) {

      oracle_schemas block "list" (Required) {
        schema = string (Required)

        oracle_tables block "list" (Optional) {
          table = string (Required)

          oracle_columns block "list" (Optional) {
            column = string (Optional)
            data_type = string (Optional)
            encoding = string (Computed)
            length = number (Computed)
            nullable = bool (Computed)
            ordinal_position = number (Computed)
            precision = number (Computed)
            primary_key = bool (Computed)
            scale = number (Computed)
          }
        }
      }
    }

    postgresql_excluded_objects block "list" (Optional) {

      postgresql_schemas block "list" (Required) {
        schema = string (Required)

        postgresql_tables block "list" (Optional) {
          table = string (Required)

          postgresql_columns block "list" (Optional) {
            column = string (Optional)
            data_type = string (Optional)
            length = number (Computed)
            nullable = bool (Optional)
            ordinal_position = number (Optional)
            precision = number (Computed)
            primary_key = bool (Optional)
            scale = number (Computed)
          }
        }
      }
    }

    salesforce_excluded_objects block "list" (Optional) {

      objects block "list" (Required) {
        object_name = string (Optional)

        fields block "list" (Optional) {
          name = string (Optional)
        }
      }
    }

    sql_server_excluded_objects block "list" (Optional) {

      schemas block "list" (Required) {
        schema = string (Required)

        tables block "list" (Optional) {
          table = string (Required)

          columns block "list" (Optional) {
            column = string (Optional)
            data_type = string (Optional)
            length = number (Computed)
            nullable = bool (Computed)
            ordinal_position = number (Computed)
            precision = number (Computed)
            primary_key = bool (Computed)
            scale = number (Computed)
          }
        }
      }
    }
  }

  backfill_none block "list" (Optional) {
  }

  destination_config block "list" (Required) {
    destination_connection_profile = string (Required)

    bigquery_destination_config block "list" (Optional) {
      data_freshness = string (Optional)

      append_only block "list" (Optional) {
      }

      blmt_config block "list" (Optional) {
        bucket = string (Required)
        connection_name = string (Required)
        file_format = string (Required)
        table_format = string (Required)
        root_path = string (Optional)
      }

      merge block "list" (Optional) {
      }

      single_target_dataset block "list" (Optional) {
        dataset_id = string (Required)
      }

      source_hierarchy_datasets block "list" (Optional) {
        project_id = string (Optional)

        dataset_template block "list" (Required) {
          location = string (Required)
          dataset_id_prefix = string (Optional)
          kms_key_name = string (Optional)
        }
      }
    }

    gcs_destination_config block "list" (Optional) {
      file_rotation_interval = string (Optional, Computed)
      file_rotation_mb = number (Optional, Computed)
      path = string (Optional)

      avro_file_format block "list" (Optional) {
      }

      json_file_format block "list" (Optional) {
        compression = string (Optional)
        schema_file_format = string (Optional)
      }
    }
  }

  source_config block "list" (Required) {
    source_connection_profile = string (Required)

    mongodb_source_config block "list" (Optional) {
      max_concurrent_backfill_tasks = number (Optional)

      exclude_objects block "list" (Optional) {

        databases block "list" (Optional) {
          database = string (Optional)

          collections block "list" (Optional) {
            collection = string (Optional)

            fields block "list" (Optional) {
              field = string (Optional)
            }
          }
        }
      }

      include_objects block "list" (Optional) {

        databases block "list" (Optional) {
          database = string (Optional)

          collections block "list" (Optional) {
            collection = string (Optional)

            fields block "list" (Optional) {
              field = string (Optional)
            }
          }
        }
      }
    }

    mysql_source_config block "list" (Optional) {
      max_concurrent_backfill_tasks = number (Optional, Computed)
      max_concurrent_cdc_tasks = number (Optional, Computed)

      binary_log_position block "list" (Optional) {
      }

      exclude_objects block "list" (Optional) {

        mysql_databases block "list" (Required) {
          database = string (Required)

          mysql_tables block "list" (Optional) {
            table = string (Required)

            mysql_columns block "list" (Optional) {
              collation = string (Optional)
              column = string (Optional)
              data_type = string (Optional)
              length = number (Computed)
              nullable = bool (Optional)
              ordinal_position = number (Optional)
              primary_key = bool (Optional)
            }
          }
        }
      }

      gtid block "list" (Optional) {
      }

      include_objects block "list" (Optional) {

        mysql_databases block "list" (Required) {
          database = string (Required)

          mysql_tables block "list" (Optional) {
            table = string (Required)

            mysql_columns block "list" (Optional) {
              collation = string (Optional)
              column = string (Optional)
              data_type = string (Optional)
              length = number (Computed)
              nullable = bool (Optional)
              ordinal_position = number (Optional)
              primary_key = bool (Optional)
            }
          }
        }
      }
    }

    oracle_source_config block "list" (Optional) {
      max_concurrent_backfill_tasks = number (Optional, Computed)
      max_concurrent_cdc_tasks = number (Optional, Computed)

      drop_large_objects block "list" (Optional) {
      }

      exclude_objects block "list" (Optional) {

        oracle_schemas block "list" (Required) {
          schema = string (Required)

          oracle_tables block "list" (Optional) {
            table = string (Required)

            oracle_columns block "list" (Optional) {
              column = string (Optional)
              data_type = string (Optional)
              encoding = string (Computed)
              length = number (Computed)
              nullable = bool (Computed)
              ordinal_position = number (Computed)
              precision = number (Computed)
              primary_key = bool (Computed)
              scale = number (Computed)
            }
          }
        }
      }

      include_objects block "list" (Optional) {

        oracle_schemas block "list" (Required) {
          schema = string (Required)

          oracle_tables block "list" (Optional) {
            table = string (Required)

            oracle_columns block "list" (Optional) {
              column = string (Optional)
              data_type = string (Optional)
              encoding = string (Computed)
              length = number (Computed)
              nullable = bool (Computed)
              ordinal_position = number (Computed)
              precision = number (Computed)
              primary_key = bool (Computed)
              scale = number (Computed)
            }
          }
        }
      }

      stream_large_objects block "list" (Optional) {
      }
    }

    postgresql_source_config block "list" (Optional) {
      publication = string (Required)
      replication_slot = string (Required)
      max_concurrent_backfill_tasks = number (Optional, Computed)

      exclude_objects block "list" (Optional) {

        postgresql_schemas block "list" (Required) {
          schema = string (Required)

          postgresql_tables block "list" (Optional) {
            table = string (Required)

            postgresql_columns block "list" (Optional) {
              column = string (Optional)
              data_type = string (Optional)
              length = number (Computed)
              nullable = bool (Optional)
              ordinal_position = number (Optional)
              precision = number (Computed)
              primary_key = bool (Optional)
              scale = number (Computed)
            }
          }
        }
      }

      include_objects block "list" (Optional) {

        postgresql_schemas block "list" (Required) {
          schema = string (Required)

          postgresql_tables block "list" (Optional) {
            table = string (Required)

            postgresql_columns block "list" (Optional) {
              column = string (Optional)
              data_type = string (Optional)
              length = number (Computed)
              nullable = bool (Optional)
              ordinal_position = number (Optional)
              precision = number (Computed)
              primary_key = bool (Optional)
              scale = number (Computed)
            }
          }
        }
      }
    }

    salesforce_source_config block "list" (Optional) {
      polling_interval = string (Required)

      exclude_objects block "list" (Optional) {

        objects block "list" (Required) {
          object_name = string (Optional)

          fields block "list" (Optional) {
            name = string (Optional)
          }
        }
      }

      include_objects block "list" (Optional) {

        objects block "list" (Required) {
          object_name = string (Optional)

          fields block "list" (Optional) {
            name = string (Optional)
          }
        }
      }
    }

    sql_server_source_config block "list" (Optional) {
      max_concurrent_backfill_tasks = number (Optional, Computed)
      max_concurrent_cdc_tasks = number (Optional, Computed)

      change_tables block "list" (Optional) {
      }

      exclude_objects block "list" (Optional) {

        schemas block "list" (Required) {
          schema = string (Required)

          tables block "list" (Optional) {
            table = string (Required)

            columns block "list" (Optional) {
              column = string (Optional)
              data_type = string (Optional)
              length = number (Computed)
              nullable = bool (Computed)
              ordinal_position = number (Computed)
              precision = number (Computed)
              primary_key = bool (Computed)
              scale = number (Computed)
            }
          }
        }
      }

      include_objects block "list" (Optional) {

        schemas block "list" (Required) {
          schema = string (Required)

          tables block "list" (Optional) {
            table = string (Required)

            columns block "list" (Optional) {
              column = string (Optional)
              data_type = string (Optional)
              length = number (Computed)
              nullable = bool (Computed)
              ordinal_position = number (Computed)
              precision = number (Computed)
              primary_key = bool (Computed)
              scale = number (Computed)
            }
          }
        }
      }

      transaction_logs block "list" (Optional) {
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
