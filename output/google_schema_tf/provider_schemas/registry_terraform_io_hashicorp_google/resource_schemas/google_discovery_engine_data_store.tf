resource "google_discovery_engine_data_store" "name" {
  content_config = string (Required)
  data_store_id = string (Required)
  display_name = string (Required)
  industry_vertical = string (Required)
  location = string (Required)
  create_advanced_site_search = bool (Optional)
  create_time = string (Computed)
  default_schema_id = string (Computed)
  id = string (Optional, Computed)
  kms_key_name = string (Optional)
  name = string (Computed)
  project = string (Optional, Computed)
  skip_default_schema_creation = bool (Optional)
  solution_types = ['list', 'string'] (Optional)

  advanced_site_search_config block "list" (Optional) {
    disable_automatic_refresh = bool (Optional)
    disable_initial_index = bool (Optional)
  }

  document_processing_config block "list" (Optional) {
    name = string (Computed)

    chunking_config block "list" (Optional) {

      layout_based_chunking_config block "list" (Optional) {
        chunk_size = number (Optional)
        include_ancestor_headings = bool (Optional)
      }
    }

    default_parsing_config block "list" (Optional) {

      digital_parsing_config block "list" (Optional) {
      }

      layout_parsing_config block "list" (Optional) {
        enable_image_annotation = bool (Optional)
        enable_table_annotation = bool (Optional)
        exclude_html_classes = ['list', 'string'] (Optional)
        exclude_html_elements = ['list', 'string'] (Optional)
        exclude_html_ids = ['list', 'string'] (Optional)
        structured_content_types = ['list', 'string'] (Optional)
      }

      ocr_parsing_config block "list" (Optional) {
        use_native_text = bool (Optional)
      }
    }

    parsing_config_overrides block "set" (Optional) {
      file_type = string (Required)

      digital_parsing_config block "list" (Optional) {
      }

      layout_parsing_config block "list" (Optional) {
        enable_image_annotation = bool (Optional)
        enable_table_annotation = bool (Optional)
        exclude_html_classes = ['list', 'string'] (Optional)
        exclude_html_elements = ['list', 'string'] (Optional)
        exclude_html_ids = ['list', 'string'] (Optional)
        structured_content_types = ['list', 'string'] (Optional)
      }

      ocr_parsing_config block "list" (Optional) {
        use_native_text = bool (Optional)
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
