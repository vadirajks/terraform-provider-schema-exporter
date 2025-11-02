resource "aws_comprehend_entity_recognizer" "name" {
  data_access_role_arn = string (Required)
  language_code = string (Required)
  name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  model_kms_key_id = string (Optional)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  version_name = string (Optional, Computed)
  version_name_prefix = string (Optional, Computed)
  volume_kms_key_id = string (Optional)

  input_data_config block "list" (Required) {
    data_format = string (Optional)

    annotations block "list" (Optional) {
      s3_uri = string (Required)
      test_s3_uri = string (Optional)
    }

    augmented_manifests block "set" (Optional) {
      attribute_names = ['list', 'string'] (Required)
      s3_uri = string (Required)
      annotation_data_s3_uri = string (Optional)
      document_type = string (Optional)
      source_documents_s3_uri = string (Optional)
      split = string (Optional)
    }

    documents block "list" (Optional) {
      s3_uri = string (Required)
      input_format = string (Optional)
      test_s3_uri = string (Optional)
    }

    entity_list block "list" (Optional) {
      s3_uri = string (Required)
    }

    entity_types block "set" (Required) {
      type = string (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  vpc_config block "list" (Optional) {
    security_group_ids = ['set', 'string'] (Required)
    subnets = ['set', 'string'] (Required)
  }
}
