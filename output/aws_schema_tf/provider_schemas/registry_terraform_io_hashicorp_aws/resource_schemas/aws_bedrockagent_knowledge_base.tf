resource "aws_bedrockagent_knowledge_base" "name" {
  name = string (Required)
  role_arn = string (Required)
  arn = string (Computed)
  created_at = string (Computed)
  description = string (Optional)
  failure_reasons = ['list', 'string'] (Computed)
  id = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)
  updated_at = string (Computed)

  knowledge_base_configuration block "list" (Optional) {
    type = string (Required)

    vector_knowledge_base_configuration block "list" (Optional) {
      embedding_model_arn = string (Required)

      embedding_model_configuration block "list" (Optional) {

        bedrock_embedding_model_configuration block "list" (Optional) {
          dimensions = number (Optional)
          embedding_data_type = string (Optional)
        }
      }

      supplemental_data_storage_configuration block "list" (Optional) {

        storage_location block "list" (Optional) {
          type = string (Required)

          s3_location block "list" (Optional) {
            uri = string (Required)
          }
        }
      }
    }
  }

  storage_configuration block "list" (Optional) {
    type = string (Required)

    opensearch_serverless_configuration block "list" (Optional) {
      collection_arn = string (Required)
      vector_index_name = string (Required)

      field_mapping block "list" (Optional) {
        metadata_field = string (Optional)
        text_field = string (Optional)
        vector_field = string (Optional)
      }
    }

    pinecone_configuration block "list" (Optional) {
      connection_string = string (Required)
      credentials_secret_arn = string (Required)
      namespace = string (Optional)

      field_mapping block "list" (Optional) {
        metadata_field = string (Optional)
        text_field = string (Optional)
      }
    }

    rds_configuration block "list" (Optional) {
      credentials_secret_arn = string (Required)
      database_name = string (Required)
      resource_arn = string (Required)
      table_name = string (Required)

      field_mapping block "list" (Optional) {
        metadata_field = string (Required)
        primary_key_field = string (Required)
        text_field = string (Required)
        vector_field = string (Required)
      }
    }

    redis_enterprise_cloud_configuration block "list" (Optional) {
      credentials_secret_arn = string (Required)
      endpoint = string (Required)
      vector_index_name = string (Required)

      field_mapping block "list" (Optional) {
        metadata_field = string (Optional)
        text_field = string (Optional)
        vector_field = string (Optional)
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
