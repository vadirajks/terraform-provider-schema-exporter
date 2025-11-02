resource "aws_kendra_index" "name" {
  name = string (Required)
  role_arn = string (Required)
  arn = string (Computed)
  created_at = string (Computed)
  description = string (Optional)
  edition = string (Optional)
  error_message = string (Computed)
  id = string (Optional, Computed)
  index_statistics = ['list', ['object', {'faq_statistics': ['list', ['object', {'indexed_question_answers_count': 'number'}]], 'text_document_statistics': ['list', ['object', {'indexed_text_bytes': 'number', 'indexed_text_documents_count': 'number'}]]}]] (Computed)
  region = string (Optional, Computed)
  status = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  updated_at = string (Computed)
  user_context_policy = string (Optional)

  capacity_units block "list" (Optional) {
    query_capacity_units = number (Optional, Computed)
    storage_capacity_units = number (Optional, Computed)
  }

  document_metadata_configuration_updates block "set" (Optional) {
    name = string (Required)
    type = string (Required)

    relevance block "list" (Optional) {
      duration = string (Optional, Computed)
      freshness = bool (Optional, Computed)
      importance = number (Optional, Computed)
      rank_order = string (Optional, Computed)
      values_importance_map = ['map', 'number'] (Optional, Computed)
    }

    search block "list" (Optional) {
      displayable = bool (Optional, Computed)
      facetable = bool (Optional, Computed)
      searchable = bool (Optional, Computed)
      sortable = bool (Optional, Computed)
    }
  }

  server_side_encryption_configuration block "list" (Optional) {
    kms_key_id = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  user_group_resolution_configuration block "list" (Optional) {
    user_group_resolution_mode = string (Required)
  }

  user_token_configurations block "list" (Optional) {

    json_token_type_configuration block "list" (Optional) {
      group_attribute_field = string (Required)
      user_name_attribute_field = string (Required)
    }

    jwt_token_type_configuration block "list" (Optional) {
      key_location = string (Required)
      claim_regex = string (Optional)
      group_attribute_field = string (Optional)
      issuer = string (Optional)
      secrets_manager_arn = string (Optional)
      url = string (Optional)
      user_name_attribute_field = string (Optional)
    }
  }
}
