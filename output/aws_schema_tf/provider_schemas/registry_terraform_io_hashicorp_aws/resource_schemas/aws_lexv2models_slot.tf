resource "aws_lexv2models_slot" "name" {
  bot_id = string (Required)
  bot_version = string (Required)
  intent_id = string (Required)
  locale_id = string (Required)
  name = string (Required)
  description = string (Optional)
  id = string (Computed)
  region = string (Optional, Computed)
  slot_id = string (Computed)
  slot_type_id = string (Optional, Computed)

  multiple_values_setting block "list" (Optional) {
    allow_multiple_values = bool (Optional)
  }

  obfuscation_setting block "list" (Optional) {
    obfuscation_setting_type = string (Required)
  }

  sub_slot_setting block "list" (Optional) {
    expression = string (Optional)

    slot_specification block "set" (Optional) {
      map_block_key = string (Required)
      slot_type_id = string (Required)

      value_elicitation_setting block "list" (Optional) {

        default_value_specification block "list" (Optional) {

          default_value_list block "list" (Optional) {
            default_value = string (Required)
          }
        }

        prompt_specification block "list" (Optional) {
          max_retries = number (Required)
          allow_interrupt = bool (Optional)
          message_selection_strategy = string (Optional)

          message_group block "list" (Optional) {

            message block "list" (Optional) {

              custom_payload block "list" (Optional) {
                value = string (Required)
              }

              image_response_card block "list" (Optional) {
                title = string (Required)
                image_url = string (Optional)
                subtitle = string (Optional)

                button block "list" (Optional) {
                  text = string (Required)
                  value = string (Required)
                }
              }

              plain_text_message block "list" (Optional) {
                value = string (Required)
              }

              ssml_message block "list" (Optional) {
                value = string (Required)
              }
            }

            variation block "list" (Optional) {

              custom_payload block "list" (Optional) {
                value = string (Required)
              }

              image_response_card block "list" (Optional) {
                title = string (Required)
                image_url = string (Optional)
                subtitle = string (Optional)

                button block "list" (Optional) {
                  text = string (Required)
                  value = string (Required)
                }
              }

              plain_text_message block "list" (Optional) {
                value = string (Required)
              }

              ssml_message block "list" (Optional) {
                value = string (Required)
              }
            }
          }

          prompt_attempts_specification block "set" (Optional) {
            map_block_key = string (Required)
            allow_interrupt = bool (Optional)

            allowed_input_types block "list" (Optional) {
              allow_audio_input = bool (Required)
              allow_dtmf_input = bool (Required)
            }

            audio_and_dtmf_input_specification block "list" (Optional) {
              start_timeout_ms = number (Required)

              audio_specification block "list" (Optional) {
                end_timeout_ms = number (Required)
                max_length_ms = number (Required)
              }

              dtmf_specification block "list" (Optional) {
                deletion_character = string (Required)
                end_character = string (Required)
                end_timeout_ms = number (Required)
                max_length = number (Required)
              }
            }

            text_input_specification block "list" (Optional) {
              start_timeout_ms = number (Required)
            }
          }
        }

        sample_utterance block "list" (Optional) {
          utterance = string (Required)
        }

        wait_and_continue_specification block "list" (Optional) {
          active = bool (Optional)

          continue_response block "list" (Optional) {
            allow_interrupt = bool (Optional)

            message_group block "list" (Optional) {

              message block "list" (Optional) {

                custom_payload block "list" (Optional) {
                  value = string (Required)
                }

                image_response_card block "list" (Optional) {
                  title = string (Required)
                  image_url = string (Optional)
                  subtitle = string (Optional)

                  button block "list" (Optional) {
                    text = string (Required)
                    value = string (Required)
                  }
                }

                plain_text_message block "list" (Optional) {
                  value = string (Required)
                }

                ssml_message block "list" (Optional) {
                  value = string (Required)
                }
              }

              variation block "list" (Optional) {

                custom_payload block "list" (Optional) {
                  value = string (Required)
                }

                image_response_card block "list" (Optional) {
                  title = string (Required)
                  image_url = string (Optional)
                  subtitle = string (Optional)

                  button block "list" (Optional) {
                    text = string (Required)
                    value = string (Required)
                  }
                }

                plain_text_message block "list" (Optional) {
                  value = string (Required)
                }

                ssml_message block "list" (Optional) {
                  value = string (Required)
                }
              }
            }
          }

          still_waiting_response block "list" (Optional) {
            frequency_in_seconds = number (Required)
            timeout_in_seconds = number (Required)
            allow_interrupt = bool (Optional)

            message_group block "list" (Optional) {

              message block "list" (Optional) {

                custom_payload block "list" (Optional) {
                  value = string (Required)
                }

                image_response_card block "list" (Optional) {
                  title = string (Required)
                  image_url = string (Optional)
                  subtitle = string (Optional)

                  button block "list" (Optional) {
                    text = string (Required)
                    value = string (Required)
                  }
                }

                plain_text_message block "list" (Optional) {
                  value = string (Required)
                }

                ssml_message block "list" (Optional) {
                  value = string (Required)
                }
              }

              variation block "list" (Optional) {

                custom_payload block "list" (Optional) {
                  value = string (Required)
                }

                image_response_card block "list" (Optional) {
                  title = string (Required)
                  image_url = string (Optional)
                  subtitle = string (Optional)

                  button block "list" (Optional) {
                    text = string (Required)
                    value = string (Required)
                  }
                }

                plain_text_message block "list" (Optional) {
                  value = string (Required)
                }

                ssml_message block "list" (Optional) {
                  value = string (Required)
                }
              }
            }
          }

          waiting_response block "list" (Optional) {
            allow_interrupt = bool (Optional)

            message_group block "list" (Optional) {

              message block "list" (Optional) {

                custom_payload block "list" (Optional) {
                  value = string (Required)
                }

                image_response_card block "list" (Optional) {
                  title = string (Required)
                  image_url = string (Optional)
                  subtitle = string (Optional)

                  button block "list" (Optional) {
                    text = string (Required)
                    value = string (Required)
                  }
                }

                plain_text_message block "list" (Optional) {
                  value = string (Required)
                }

                ssml_message block "list" (Optional) {
                  value = string (Required)
                }
              }

              variation block "list" (Optional) {

                custom_payload block "list" (Optional) {
                  value = string (Required)
                }

                image_response_card block "list" (Optional) {
                  title = string (Required)
                  image_url = string (Optional)
                  subtitle = string (Optional)

                  button block "list" (Optional) {
                    text = string (Required)
                    value = string (Required)
                  }
                }

                plain_text_message block "list" (Optional) {
                  value = string (Required)
                }

                ssml_message block "list" (Optional) {
                  value = string (Required)
                }
              }
            }
          }
        }
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  value_elicitation_setting block "list" (Optional) {
    slot_constraint = string (Required)

    default_value_specification block "list" (Optional) {

      default_value_list block "list" (Optional) {
        default_value = string (Required)
      }
    }

    prompt_specification block "list" (Optional) {
      max_retries = number (Required)
      allow_interrupt = bool (Optional)
      message_selection_strategy = string (Optional)

      message_group block "list" (Optional) {

        message block "list" (Optional) {

          custom_payload block "list" (Optional) {
            value = string (Required)
          }

          image_response_card block "list" (Optional) {
            title = string (Required)
            image_url = string (Optional)
            subtitle = string (Optional)

            button block "list" (Optional) {
              text = string (Required)
              value = string (Required)
            }
          }

          plain_text_message block "list" (Optional) {
            value = string (Required)
          }

          ssml_message block "list" (Optional) {
            value = string (Required)
          }
        }

        variation block "list" (Optional) {

          custom_payload block "list" (Optional) {
            value = string (Required)
          }

          image_response_card block "list" (Optional) {
            title = string (Required)
            image_url = string (Optional)
            subtitle = string (Optional)

            button block "list" (Optional) {
              text = string (Required)
              value = string (Required)
            }
          }

          plain_text_message block "list" (Optional) {
            value = string (Required)
          }

          ssml_message block "list" (Optional) {
            value = string (Required)
          }
        }
      }

      prompt_attempts_specification block "set" (Optional) {
        map_block_key = string (Required)
        allow_interrupt = bool (Optional)

        allowed_input_types block "list" (Optional) {
          allow_audio_input = bool (Required)
          allow_dtmf_input = bool (Required)
        }

        audio_and_dtmf_input_specification block "list" (Optional) {
          start_timeout_ms = number (Required)

          audio_specification block "list" (Optional) {
            end_timeout_ms = number (Required)
            max_length_ms = number (Required)
          }

          dtmf_specification block "list" (Optional) {
            deletion_character = string (Required)
            end_character = string (Required)
            end_timeout_ms = number (Required)
            max_length = number (Required)
          }
        }

        text_input_specification block "list" (Optional) {
          start_timeout_ms = number (Required)
        }
      }
    }

    sample_utterance block "list" (Optional) {
      utterance = string (Required)
    }

    slot_resolution_setting block "list" (Optional) {
      slot_resolution_strategy = string (Required)
    }

    wait_and_continue_specification block "list" (Optional) {
      active = bool (Optional)

      continue_response block "list" (Optional) {
        allow_interrupt = bool (Optional)

        message_group block "list" (Optional) {

          message block "list" (Optional) {

            custom_payload block "list" (Optional) {
              value = string (Required)
            }

            image_response_card block "list" (Optional) {
              title = string (Required)
              image_url = string (Optional)
              subtitle = string (Optional)

              button block "list" (Optional) {
                text = string (Required)
                value = string (Required)
              }
            }

            plain_text_message block "list" (Optional) {
              value = string (Required)
            }

            ssml_message block "list" (Optional) {
              value = string (Required)
            }
          }

          variation block "list" (Optional) {

            custom_payload block "list" (Optional) {
              value = string (Required)
            }

            image_response_card block "list" (Optional) {
              title = string (Required)
              image_url = string (Optional)
              subtitle = string (Optional)

              button block "list" (Optional) {
                text = string (Required)
                value = string (Required)
              }
            }

            plain_text_message block "list" (Optional) {
              value = string (Required)
            }

            ssml_message block "list" (Optional) {
              value = string (Required)
            }
          }
        }
      }

      still_waiting_response block "list" (Optional) {
        frequency_in_seconds = number (Required)
        timeout_in_seconds = number (Required)
        allow_interrupt = bool (Optional)

        message_group block "list" (Optional) {

          message block "list" (Optional) {

            custom_payload block "list" (Optional) {
              value = string (Required)
            }

            image_response_card block "list" (Optional) {
              title = string (Required)
              image_url = string (Optional)
              subtitle = string (Optional)

              button block "list" (Optional) {
                text = string (Required)
                value = string (Required)
              }
            }

            plain_text_message block "list" (Optional) {
              value = string (Required)
            }

            ssml_message block "list" (Optional) {
              value = string (Required)
            }
          }

          variation block "list" (Optional) {

            custom_payload block "list" (Optional) {
              value = string (Required)
            }

            image_response_card block "list" (Optional) {
              title = string (Required)
              image_url = string (Optional)
              subtitle = string (Optional)

              button block "list" (Optional) {
                text = string (Required)
                value = string (Required)
              }
            }

            plain_text_message block "list" (Optional) {
              value = string (Required)
            }

            ssml_message block "list" (Optional) {
              value = string (Required)
            }
          }
        }
      }

      waiting_response block "list" (Optional) {
        allow_interrupt = bool (Optional)

        message_group block "list" (Optional) {

          message block "list" (Optional) {

            custom_payload block "list" (Optional) {
              value = string (Required)
            }

            image_response_card block "list" (Optional) {
              title = string (Required)
              image_url = string (Optional)
              subtitle = string (Optional)

              button block "list" (Optional) {
                text = string (Required)
                value = string (Required)
              }
            }

            plain_text_message block "list" (Optional) {
              value = string (Required)
            }

            ssml_message block "list" (Optional) {
              value = string (Required)
            }
          }

          variation block "list" (Optional) {

            custom_payload block "list" (Optional) {
              value = string (Required)
            }

            image_response_card block "list" (Optional) {
              title = string (Required)
              image_url = string (Optional)
              subtitle = string (Optional)

              button block "list" (Optional) {
                text = string (Required)
                value = string (Required)
              }
            }

            plain_text_message block "list" (Optional) {
              value = string (Required)
            }

            ssml_message block "list" (Optional) {
              value = string (Required)
            }
          }
        }
      }
    }
  }
}
