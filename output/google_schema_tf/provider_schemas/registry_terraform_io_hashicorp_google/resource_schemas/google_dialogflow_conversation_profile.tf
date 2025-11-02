resource "google_dialogflow_conversation_profile" "name" {
  display_name = string (Required)
  location = string (Required)
  id = string (Optional, Computed)
  language_code = string (Optional, Computed)
  name = string (Computed)
  project = string (Optional, Computed)
  security_settings = string (Optional)
  time_zone = string (Optional)

  automated_agent_config block "list" (Optional) {
    agent = string (Required)
    session_ttl = string (Optional)
  }

  human_agent_assistant_config block "list" (Optional) {

    end_user_suggestion_config block "list" (Optional) {
      disable_high_latency_features_sync_delivery = bool (Optional)
      generators = ['list', 'string'] (Optional)
      group_suggestion_responses = bool (Optional)

      feature_configs block "list" (Optional) {
        disable_agent_query_logging = bool (Optional)
        enable_conversation_augmented_query = bool (Optional)
        enable_event_based_suggestion = bool (Optional)
        enable_query_suggestion_only = bool (Optional)
        enable_query_suggestion_when_no_answer = bool (Optional)

        conversation_model_config block "list" (Optional) {
          baseline_model_version = string (Optional)
          model = string (Optional)
        }

        conversation_process_config block "list" (Optional) {
          recent_sentences_count = number (Optional)
        }

        query_config block "list" (Optional) {
          confidence_threshold = number (Optional)
          max_results = number (Optional)

          context_filter_settings block "list" (Optional) {
            drop_handoff_messages = bool (Optional)
            drop_ivr_messages = bool (Optional)
            drop_virtual_agent_messages = bool (Optional)
          }

          dialogflow_query_source block "list" (Optional) {
            agent = string (Required)

            human_agent_side_config block "list" (Optional) {
              agent = string (Optional)
            }
          }

          document_query_source block "list" (Optional) {
            documents = ['list', 'string'] (Required)
          }

          knowledge_base_query_source block "list" (Optional) {
            knowledge_bases = ['list', 'string'] (Required)
          }

          sections block "list" (Optional) {
            section_types = ['list', 'string'] (Optional)
          }
        }

        suggestion_feature block "list" (Optional) {
          type = string (Optional)
        }

        suggestion_trigger_settings block "list" (Optional) {
          no_small_talk = bool (Optional)
          only_end_user = bool (Optional)
        }
      }
    }

    human_agent_suggestion_config block "list" (Optional) {
      disable_high_latency_features_sync_delivery = bool (Optional)
      generators = ['list', 'string'] (Optional)
      group_suggestion_responses = bool (Optional)

      feature_configs block "list" (Optional) {
        disable_agent_query_logging = bool (Optional)
        enable_conversation_augmented_query = bool (Optional)
        enable_event_based_suggestion = bool (Optional)
        enable_query_suggestion_only = bool (Optional)
        enable_query_suggestion_when_no_answer = bool (Optional)

        conversation_model_config block "list" (Optional) {
          baseline_model_version = string (Optional)
          model = string (Optional)
        }

        conversation_process_config block "list" (Optional) {
          recent_sentences_count = number (Optional)
        }

        query_config block "list" (Optional) {
          confidence_threshold = number (Optional)
          max_results = number (Optional)

          context_filter_settings block "list" (Optional) {
            drop_handoff_messages = bool (Optional)
            drop_ivr_messages = bool (Optional)
            drop_virtual_agent_messages = bool (Optional)
          }

          dialogflow_query_source block "list" (Optional) {
            agent = string (Required)

            human_agent_side_config block "list" (Optional) {
              agent = string (Optional)
            }
          }

          sections block "list" (Optional) {
            section_types = ['list', 'string'] (Optional)
          }
        }

        suggestion_feature block "list" (Optional) {
          type = string (Optional)
        }

        suggestion_trigger_settings block "list" (Optional) {
          no_small_talk = bool (Optional)
          only_end_user = bool (Optional)
        }
      }
    }

    message_analysis_config block "list" (Optional) {
      enable_entity_extraction = bool (Optional)
      enable_sentiment_analysis = bool (Optional)
    }

    notification_config block "list" (Optional) {
      message_format = string (Optional)
      topic = string (Optional)
    }
  }

  human_agent_handoff_config block "list" (Optional) {

    live_person_config block "list" (Optional) {
      account_number = string (Required)
    }
  }

  logging_config block "list" (Optional) {
    enable_stackdriver_logging = bool (Optional)
  }

  new_message_event_notification_config block "list" (Optional) {
    message_format = string (Optional)
    topic = string (Optional)
  }

  new_recognition_result_notification_config block "list" (Optional) {
    message_format = string (Optional)
    topic = string (Optional)
  }

  notification_config block "list" (Optional) {
    message_format = string (Optional)
    topic = string (Optional)
  }

  stt_config block "list" (Optional) {
    audio_encoding = string (Optional)
    enable_word_info = bool (Optional)
    language_code = string (Optional, Computed)
    model = string (Optional)
    sample_rate_hertz = number (Optional)
    speech_model_variant = string (Optional)
    use_timeout_based_endpointing = bool (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  tts_config block "list" (Optional) {
    effects_profile_id = ['list', 'string'] (Optional)
    pitch = number (Optional)
    speaking_rate = number (Optional)
    volume_gain_db = number (Optional)

    voice block "list" (Optional) {
      name = string (Optional)
      ssml_gender = string (Optional)
    }
  }
}
