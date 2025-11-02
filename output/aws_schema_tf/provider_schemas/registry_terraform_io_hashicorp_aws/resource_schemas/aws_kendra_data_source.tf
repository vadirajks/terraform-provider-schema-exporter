resource "aws_kendra_data_source" "name" {
  index_id = string (Required)
  name = string (Required)
  type = string (Required)
  arn = string (Computed)
  created_at = string (Computed)
  data_source_id = string (Computed)
  description = string (Optional)
  error_message = string (Computed)
  id = string (Optional, Computed)
  language_code = string (Optional, Computed)
  region = string (Optional, Computed)
  role_arn = string (Optional)
  schedule = string (Optional)
  status = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  updated_at = string (Computed)

  configuration block "list" (Optional) {

    s3_configuration block "list" (Optional) {
      bucket_name = string (Required)
      exclusion_patterns = ['set', 'string'] (Optional)
      inclusion_patterns = ['set', 'string'] (Optional)
      inclusion_prefixes = ['set', 'string'] (Optional)

      access_control_list_configuration block "list" (Optional) {
        key_path = string (Optional)
      }

      documents_metadata_configuration block "list" (Optional) {
        s3_prefix = string (Optional)
      }
    }

    template_configuration block "list" (Optional) {
      template = string (Required)
    }

    web_crawler_configuration block "list" (Optional) {
      crawl_depth = number (Optional)
      max_content_size_per_page_in_mega_bytes = number (Optional)
      max_links_per_page = number (Optional)
      max_urls_per_minute_crawl_rate = number (Optional)
      url_exclusion_patterns = ['set', 'string'] (Optional)
      url_inclusion_patterns = ['set', 'string'] (Optional)

      authentication_configuration block "list" (Optional) {

        basic_authentication block "set" (Optional) {
          credentials = string (Required)
          host = string (Required)
          port = number (Required)
        }
      }

      proxy_configuration block "list" (Optional) {
        host = string (Required)
        port = number (Required)
        credentials = string (Optional)
      }

      urls block "list" (Required) {

        seed_url_configuration block "list" (Optional) {
          seed_urls = ['set', 'string'] (Required)
          web_crawler_mode = string (Optional)
        }

        site_maps_configuration block "list" (Optional) {
          site_maps = ['set', 'string'] (Required)
        }
      }
    }
  }

  custom_document_enrichment_configuration block "list" (Optional) {
    role_arn = string (Optional)

    inline_configurations block "set" (Optional) {
      document_content_deletion = bool (Optional)

      condition block "list" (Optional) {
        condition_document_attribute_key = string (Required)
        operator = string (Required)

        condition_on_value block "list" (Optional) {
          date_value = string (Optional)
          long_value = number (Optional)
          string_list_value = ['set', 'string'] (Optional)
          string_value = string (Optional)
        }
      }

      target block "list" (Optional) {
        target_document_attribute_key = string (Optional)
        target_document_attribute_value_deletion = bool (Optional)

        target_document_attribute_value block "list" (Optional) {
          date_value = string (Optional)
          long_value = number (Optional)
          string_list_value = ['set', 'string'] (Optional)
          string_value = string (Optional)
        }
      }
    }

    post_extraction_hook_configuration block "list" (Optional) {
      lambda_arn = string (Required)
      s3_bucket = string (Required)

      invocation_condition block "list" (Optional) {
        condition_document_attribute_key = string (Required)
        operator = string (Required)

        condition_on_value block "list" (Optional) {
          date_value = string (Optional)
          long_value = number (Optional)
          string_list_value = ['set', 'string'] (Optional)
          string_value = string (Optional)
        }
      }
    }

    pre_extraction_hook_configuration block "list" (Optional) {
      lambda_arn = string (Required)
      s3_bucket = string (Required)

      invocation_condition block "list" (Optional) {
        condition_document_attribute_key = string (Required)
        operator = string (Required)

        condition_on_value block "list" (Optional) {
          date_value = string (Optional)
          long_value = number (Optional)
          string_list_value = ['set', 'string'] (Optional)
          string_value = string (Optional)
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
