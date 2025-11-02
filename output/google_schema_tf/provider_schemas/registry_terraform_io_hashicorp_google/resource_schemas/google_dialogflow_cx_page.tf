resource "google_dialogflow_cx_page" "name" {
  display_name = string (Required)
  id = string (Optional, Computed)
  language_code = string (Optional)
  name = string (Computed)
  parent = string (Optional)
  transition_route_groups = ['list', 'string'] (Optional)

  advanced_settings block "list" (Optional) {

    dtmf_settings block "list" (Optional) {
      enabled = bool (Optional)
      finish_digit = string (Optional)
      max_digits = number (Optional)
    }
  }

  entry_fulfillment block "list" (Optional) {
    return_partial_responses = bool (Optional)
    tag = string (Optional)
    webhook = string (Optional)

    conditional_cases block "list" (Optional) {
      cases = string (Optional)
    }

    messages block "list" (Optional) {
      channel = string (Optional)
      payload = string (Optional)

      conversation_success block "list" (Optional) {
        metadata = string (Optional)
      }

      live_agent_handoff block "list" (Optional) {
        metadata = string (Optional)
      }

      output_audio_text block "list" (Optional) {
        allow_playback_interruption = bool (Computed)
        ssml = string (Optional)
        text = string (Optional)
      }

      play_audio block "list" (Optional) {
        audio_uri = string (Required)
        allow_playback_interruption = bool (Computed)
      }

      telephony_transfer_call block "list" (Optional) {
        phone_number = string (Required)
      }

      text block "list" (Optional) {
        allow_playback_interruption = bool (Computed)
        text = ['list', 'string'] (Optional)
      }
    }

    set_parameter_actions block "list" (Optional) {
      parameter = string (Optional)
      value = string (Optional)
    }
  }

  event_handlers block "list" (Optional) {
    event = string (Optional)
    name = string (Computed)
    target_flow = string (Optional)
    target_page = string (Optional)

    trigger_fulfillment block "list" (Optional) {
      return_partial_responses = bool (Optional)
      tag = string (Optional)
      webhook = string (Optional)

      conditional_cases block "list" (Optional) {
        cases = string (Optional)
      }

      messages block "list" (Optional) {
        channel = string (Optional)
        payload = string (Optional)

        conversation_success block "list" (Optional) {
          metadata = string (Optional)
        }

        live_agent_handoff block "list" (Optional) {
          metadata = string (Optional)
        }

        output_audio_text block "list" (Optional) {
          allow_playback_interruption = bool (Computed)
          ssml = string (Optional)
          text = string (Optional)
        }

        play_audio block "list" (Optional) {
          audio_uri = string (Required)
          allow_playback_interruption = bool (Computed)
        }

        telephony_transfer_call block "list" (Optional) {
          phone_number = string (Required)
        }

        text block "list" (Optional) {
          allow_playback_interruption = bool (Computed)
          text = ['list', 'string'] (Optional)
        }
      }

      set_parameter_actions block "list" (Optional) {
        parameter = string (Optional)
        value = string (Optional)
      }
    }
  }

  form block "list" (Optional) {

    parameters block "list" (Optional) {
      default_value = string (Optional)
      display_name = string (Optional)
      entity_type = string (Optional)
      is_list = bool (Optional)
      redact = bool (Optional)
      required = bool (Optional)

      advanced_settings block "list" (Optional) {

        dtmf_settings block "list" (Optional) {
          enabled = bool (Optional)
          finish_digit = string (Optional)
          max_digits = number (Optional)
        }
      }

      fill_behavior block "list" (Optional) {

        initial_prompt_fulfillment block "list" (Optional) {
          return_partial_responses = bool (Optional)
          tag = string (Optional)
          webhook = string (Optional)

          conditional_cases block "list" (Optional) {
            cases = string (Optional)
          }

          messages block "list" (Optional) {
            channel = string (Optional)
            payload = string (Optional)

            conversation_success block "list" (Optional) {
              metadata = string (Optional)
            }

            live_agent_handoff block "list" (Optional) {
              metadata = string (Optional)
            }

            output_audio_text block "list" (Optional) {
              allow_playback_interruption = bool (Computed)
              ssml = string (Optional)
              text = string (Optional)
            }

            play_audio block "list" (Optional) {
              audio_uri = string (Required)
              allow_playback_interruption = bool (Computed)
            }

            telephony_transfer_call block "list" (Optional) {
              phone_number = string (Required)
            }

            text block "list" (Optional) {
              allow_playback_interruption = bool (Computed)
              text = ['list', 'string'] (Optional)
            }
          }

          set_parameter_actions block "list" (Optional) {
            parameter = string (Optional)
            value = string (Optional)
          }
        }

        reprompt_event_handlers block "list" (Optional) {
          event = string (Optional)
          name = string (Computed)
          target_flow = string (Optional)
          target_page = string (Optional)

          trigger_fulfillment block "list" (Optional) {
            return_partial_responses = bool (Optional)
            tag = string (Optional)
            webhook = string (Optional)

            conditional_cases block "list" (Optional) {
              cases = string (Optional)
            }

            messages block "list" (Optional) {
              channel = string (Optional)
              payload = string (Optional)

              conversation_success block "list" (Optional) {
                metadata = string (Optional)
              }

              live_agent_handoff block "list" (Optional) {
                metadata = string (Optional)
              }

              output_audio_text block "list" (Optional) {
                allow_playback_interruption = bool (Computed)
                ssml = string (Optional)
                text = string (Optional)
              }

              play_audio block "list" (Optional) {
                audio_uri = string (Required)
                allow_playback_interruption = bool (Computed)
              }

              telephony_transfer_call block "list" (Optional) {
                phone_number = string (Required)
              }

              text block "list" (Optional) {
                allow_playback_interruption = bool (Computed)
                text = ['list', 'string'] (Optional)
              }
            }

            set_parameter_actions block "list" (Optional) {
              parameter = string (Optional)
              value = string (Optional)
            }
          }
        }
      }
    }
  }

  knowledge_connector_settings block "list" (Optional) {
    enabled = bool (Optional)
    target_flow = string (Optional)
    target_page = string (Optional)

    data_store_connections block "list" (Optional) {
      data_store = string (Optional)
      data_store_type = string (Optional)
      document_processing_mode = string (Optional)
    }

    trigger_fulfillment block "list" (Optional) {
      enable_generative_fallback = bool (Optional)
      return_partial_responses = bool (Optional)
      tag = string (Optional)
      webhook = string (Optional)

      advanced_settings block "list" (Optional) {

        dtmf_settings block "list" (Optional) {
          enabled = bool (Optional)
          endpointing_timeout_duration = string (Optional)
          finish_digit = string (Optional)
          interdigit_timeout_duration = string (Optional)
          max_digits = number (Optional)
        }

        logging_settings block "list" (Optional) {
          enable_consent_based_redaction = bool (Optional)
          enable_interaction_logging = bool (Optional)
          enable_stackdriver_logging = bool (Optional)
        }

        speech_settings block "list" (Optional) {
          endpointer_sensitivity = number (Optional)
          models = ['map', 'string'] (Optional)
          no_speech_timeout = string (Optional)
          use_timeout_based_endpointing = bool (Optional)
        }
      }

      conditional_cases block "list" (Optional) {
        cases = string (Optional)
      }

      messages block "list" (Optional) {
        channel = string (Optional)
        end_interaction = ['list', ['object', {}]] (Computed)
        mixed_audio = ['list', ['object', {'segments': ['list', ['object', {'allow_playback_interruption': 'bool', 'audio': 'string', 'uri': 'string'}]]}]] (Computed)
        payload = string (Optional)

        conversation_success block "list" (Optional) {
          metadata = string (Optional)
        }

        knowledge_info_card block "list" (Optional) {
        }

        live_agent_handoff block "list" (Optional) {
          metadata = string (Optional)
        }

        output_audio_text block "list" (Optional) {
          allow_playback_interruption = bool (Computed)
          ssml = string (Optional)
          text = string (Optional)
        }

        play_audio block "list" (Optional) {
          audio_uri = string (Required)
          allow_playback_interruption = bool (Computed)
        }

        telephony_transfer_call block "list" (Optional) {
          phone_number = string (Required)
        }

        text block "list" (Optional) {
          allow_playback_interruption = bool (Computed)
          text = ['list', 'string'] (Optional)
        }
      }

      set_parameter_actions block "list" (Optional) {
        parameter = string (Optional)
        value = string (Optional)
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  transition_routes block "list" (Optional) {
    condition = string (Optional)
    intent = string (Optional)
    name = string (Computed)
    target_flow = string (Optional)
    target_page = string (Optional)

    trigger_fulfillment block "list" (Optional) {
      return_partial_responses = bool (Optional)
      tag = string (Optional)
      webhook = string (Optional)

      conditional_cases block "list" (Optional) {
        cases = string (Optional)
      }

      messages block "list" (Optional) {
        channel = string (Optional)
        payload = string (Optional)

        conversation_success block "list" (Optional) {
          metadata = string (Optional)
        }

        live_agent_handoff block "list" (Optional) {
          metadata = string (Optional)
        }

        output_audio_text block "list" (Optional) {
          allow_playback_interruption = bool (Computed)
          ssml = string (Optional)
          text = string (Optional)
        }

        play_audio block "list" (Optional) {
          audio_uri = string (Required)
          allow_playback_interruption = bool (Computed)
        }

        telephony_transfer_call block "list" (Optional) {
          phone_number = string (Required)
        }

        text block "list" (Optional) {
          allow_playback_interruption = bool (Computed)
          text = ['list', 'string'] (Optional)
        }
      }

      set_parameter_actions block "list" (Optional) {
        parameter = string (Optional)
        value = string (Optional)
      }
    }
  }
}
