resource "aws_chimesdkmediapipelines_media_insights_pipeline_configuration" "name" {
  name = string (Required)
  resource_access_role_arn = string (Required)
  arn = string (Computed)
  id = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  elements block "list" (Required) {
    type = string (Required)

    amazon_transcribe_call_analytics_processor_configuration block "list" (Optional) {
      language_code = string (Required)
      call_analytics_stream_categories = ['list', 'string'] (Optional)
      content_identification_type = string (Optional)
      content_redaction_type = string (Optional)
      enable_partial_results_stabilization = bool (Optional)
      filter_partial_results = bool (Optional)
      language_model_name = string (Optional)
      partial_results_stability = string (Optional)
      pii_entity_types = string (Optional)
      vocabulary_filter_method = string (Optional)
      vocabulary_filter_name = string (Optional)
      vocabulary_name = string (Optional)

      post_call_analytics_settings block "list" (Optional) {
        data_access_role_arn = string (Required)
        output_location = string (Required)
        content_redaction_output = string (Optional)
        output_encryption_kms_key_id = string (Optional)
      }
    }

    amazon_transcribe_processor_configuration block "list" (Optional) {
      language_code = string (Required)
      content_identification_type = string (Optional)
      content_redaction_type = string (Optional)
      enable_partial_results_stabilization = bool (Optional)
      filter_partial_results = bool (Optional)
      language_model_name = string (Optional)
      partial_results_stability = string (Optional)
      pii_entity_types = string (Optional)
      show_speaker_label = bool (Optional)
      vocabulary_filter_method = string (Optional)
      vocabulary_filter_name = string (Optional)
      vocabulary_name = string (Optional)
    }

    kinesis_data_stream_sink_configuration block "list" (Optional) {
      insights_target = string (Required)
    }

    lambda_function_sink_configuration block "list" (Optional) {
      insights_target = string (Required)
    }

    s3_recording_sink_configuration block "list" (Optional) {
      destination = string (Optional)
    }

    sns_topic_sink_configuration block "list" (Optional) {
      insights_target = string (Required)
    }

    sqs_queue_sink_configuration block "list" (Optional) {
      insights_target = string (Required)
    }

    voice_analytics_processor_configuration block "list" (Optional) {
      speaker_search_status = string (Required)
      voice_tone_analysis_status = string (Required)
    }
  }

  real_time_alert_configuration block "list" (Optional) {
    disabled = bool (Optional, Computed)

    rules block "list" (Required) {
      type = string (Required)

      issue_detection_configuration block "list" (Optional) {
        rule_name = string (Required)
      }

      keyword_match_configuration block "list" (Optional) {
        keywords = ['list', 'string'] (Required)
        rule_name = string (Required)
        negate = bool (Optional, Computed)
      }

      sentiment_configuration block "list" (Optional) {
        rule_name = string (Required)
        sentiment_type = string (Required)
        time_period = number (Required)
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
