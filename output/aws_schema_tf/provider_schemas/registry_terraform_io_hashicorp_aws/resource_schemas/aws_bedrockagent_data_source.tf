resource "aws_bedrockagent_data_source" "name" {
  knowledge_base_id = string (Required)
  name = string (Required)
  data_deletion_policy = string (Optional, Computed)
  data_source_id = string (Computed)
  description = string (Optional)
  id = string (Computed)
  region = string (Optional, Computed)

  data_source_configuration block "list" (Optional) {
    type = string (Required)

    confluence_configuration block "list" (Optional) {

      crawler_configuration block "list" (Optional) {

        filter_configuration block "list" (Optional) {
          type = string (Required)

          pattern_object_filter block "list" (Optional) {

            filters block "list" (Optional) {
              object_type = string (Required)
              exclusion_filters = ['set', 'string'] (Optional)
              inclusion_filters = ['set', 'string'] (Optional)
            }
          }
        }
      }

      source_configuration block "list" (Optional) {
        auth_type = string (Required)
        credentials_secret_arn = string (Required)
        host_type = string (Required)
        host_url = string (Required)
      }
    }

    s3_configuration block "list" (Optional) {
      bucket_arn = string (Required)
      bucket_owner_account_id = string (Optional)
      inclusion_prefixes = ['set', 'string'] (Optional)
    }

    salesforce_configuration block "list" (Optional) {

      crawler_configuration block "list" (Optional) {

        filter_configuration block "list" (Optional) {
          type = string (Required)

          pattern_object_filter block "list" (Optional) {

            filters block "list" (Optional) {
              object_type = string (Required)
              exclusion_filters = ['set', 'string'] (Optional)
              inclusion_filters = ['set', 'string'] (Optional)
            }
          }
        }
      }

      source_configuration block "list" (Optional) {
        auth_type = string (Required)
        credentials_secret_arn = string (Required)
        host_url = string (Required)
      }
    }

    share_point_configuration block "list" (Optional) {

      crawler_configuration block "list" (Optional) {

        filter_configuration block "list" (Optional) {
          type = string (Required)

          pattern_object_filter block "list" (Optional) {

            filters block "list" (Optional) {
              object_type = string (Required)
              exclusion_filters = ['set', 'string'] (Optional)
              inclusion_filters = ['set', 'string'] (Optional)
            }
          }
        }
      }

      source_configuration block "list" (Optional) {
        auth_type = string (Required)
        credentials_secret_arn = string (Required)
        domain = string (Required)
        host_type = string (Required)
        site_urls = ['set', 'string'] (Required)
        tenant_id = string (Optional)
      }
    }

    web_configuration block "list" (Optional) {

      crawler_configuration block "list" (Optional) {
        exclusion_filters = ['set', 'string'] (Optional)
        inclusion_filters = ['set', 'string'] (Optional)
        scope = string (Optional)
        user_agent = string (Optional)

        crawler_limits block "list" (Optional) {
          max_pages = number (Optional)
          rate_limit = number (Optional)
        }
      }

      source_configuration block "list" (Optional) {

        url_configuration block "list" (Optional) {

          seed_urls block "list" (Optional) {
            url = string (Optional)
          }
        }
      }
    }
  }

  server_side_encryption_configuration block "list" (Optional) {
    kms_key_arn = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }

  vector_ingestion_configuration block "list" (Optional) {

    chunking_configuration block "list" (Optional) {
      chunking_strategy = string (Required)

      fixed_size_chunking_configuration block "list" (Optional) {
        max_tokens = number (Required)
        overlap_percentage = number (Required)
      }

      hierarchical_chunking_configuration block "list" (Optional) {
        overlap_tokens = number (Required)

        level_configuration block "list" (Optional) {
          max_tokens = number (Required)
        }
      }

      semantic_chunking_configuration block "list" (Optional) {
        breakpoint_percentile_threshold = number (Required)
        buffer_size = number (Required)
        max_token = number (Required)
      }
    }

    custom_transformation_configuration block "list" (Optional) {

      intermediate_storage block "list" (Optional) {

        s3_location block "list" (Optional) {
          uri = string (Required)
        }
      }

      transformation block "list" (Optional) {
        step_to_apply = string (Required)

        transformation_function block "list" (Optional) {

          transformation_lambda_configuration block "list" (Optional) {
            lambda_arn = string (Required)
          }
        }
      }
    }

    parsing_configuration block "list" (Optional) {
      parsing_strategy = string (Required)

      bedrock_foundation_model_configuration block "list" (Optional) {
        model_arn = string (Required)

        parsing_prompt block "list" (Optional) {
          parsing_prompt_string = string (Required)
        }
      }
    }
  }
}
