resource "aws_comprehend_document_classifier" "name" {
  data_access_role_arn = string (Required)
  language_code = string (Required)
  name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  mode = string (Optional)
  model_kms_key_id = string (Optional)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  version_name = string (Optional, Computed)
  version_name_prefix = string (Optional, Computed)
  volume_kms_key_id = string (Optional)

  input_data_config block "list" (Required) {
    data_format = string (Optional)
    label_delimiter = string (Optional, Computed)
    s3_uri = string (Optional)
    test_s3_uri = string (Optional)

    augmented_manifests block "set" (Optional) {
      attribute_names = ['list', 'string'] (Required)
      s3_uri = string (Required)
      annotation_data_s3_uri = string (Optional)
      document_type = string (Optional)
      source_documents_s3_uri = string (Optional)
      split = string (Optional)
    }
  }

  output_data_config block "list" (Optional) {
    s3_uri = string (Required)
    kms_key_id = string (Optional)
    output_s3_uri = string (Computed)
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
