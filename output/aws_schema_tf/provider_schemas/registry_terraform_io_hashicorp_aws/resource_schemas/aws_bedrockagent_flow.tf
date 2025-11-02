resource "aws_bedrockagent_flow" "name" {
  execution_role_arn = string (Required)
  name = string (Required)
  arn = string (Computed)
  created_at = string (Computed)
  customer_encryption_key_arn = string (Optional)
  description = string (Optional)
  id = string (Computed)
  region = string (Optional, Computed)
  status = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)
  updated_at = string (Computed)
  version = string (Computed)

  definition block "list" (Optional) {

    connection block "list" (Optional) {
      name = string (Required)
      source = string (Required)
      target = string (Required)
      type = string (Required)

      configuration block "list" (Optional) {

        conditional block "list" (Optional) {
          condition = string (Required)
        }

        data block "list" (Optional) {
          source_output = string (Required)
          target_input = string (Required)
        }
      }
    }

    node block "list" (Optional) {
      name = string (Required)
      type = string (Required)

      configuration block "list" (Optional) {

        agent block "list" (Optional) {
          agent_alias_arn = string (Required)
        }

        collector block "list" (Optional) {
        }

        condition block "list" (Optional) {

          condition block "list" (Optional) {
            name = string (Required)
            expression = string (Optional)
          }
        }

        inline_code block "list" (Optional) {
          code = string (Required)
          language = string (Required)
        }

        input block "list" (Optional) {
        }

        iterator block "list" (Optional) {
        }

        knowledge_base block "list" (Optional) {
          knowledge_base_id = string (Required)
          model_id = string (Required)
          number_of_results = number (Optional)

          guardrail_configuration block "list" (Optional) {
            guardrail_identifier = string (Required)
            guardrail_version = string (Required)
          }

          inference_configuration block "list" (Optional) {

            text block "list" (Optional) {
              max_tokens = number (Optional)
              stop_sequences = ['list', 'string'] (Optional)
              temperature = number (Optional)
              top_p = number (Optional)
            }
          }
        }

        lambda_function block "list" (Optional) {
          lambda_arn = string (Required)
        }

        lex block "list" (Optional) {
          bot_alias_arn = string (Required)
          locale_id = string (Required)
        }

        output block "list" (Optional) {
        }

        prompt block "list" (Optional) {

          guardrail_configuration block "list" (Optional) {
            guardrail_identifier = string (Required)
            guardrail_version = string (Required)
          }

          source_configuration block "list" (Optional) {

            inline block "list" (Optional) {
              model_id = string (Required)
              template_type = string (Required)
              additional_model_request_fields = string (Optional)

              inference_configuration block "list" (Optional) {

                text block "list" (Optional) {
                  max_tokens = number (Optional)
                  stop_sequences = ['list', 'string'] (Optional)
                  temperature = number (Optional)
                  top_p = number (Optional)
                }
              }

              template_configuration block "list" (Optional) {

                chat block "list" (Optional) {

                  input_variable block "list" (Optional) {
                    name = string (Required)
                  }

                  message block "list" (Optional) {
                    role = string (Required)

                    content block "list" (Optional) {
                      text = string (Optional)

                      cache_point block "list" (Optional) {
                        type = string (Required)
                      }
                    }
                  }

                  system block "list" (Optional) {
                    text = string (Optional)

                    cache_point block "list" (Optional) {
                      type = string (Required)
                    }
                  }

                  tool_configuration block "list" (Optional) {

                    tool block "list" (Optional) {

                      cache_point block "list" (Optional) {
                        type = string (Required)
                      }

                      tool_spec block "list" (Optional) {
                        name = string (Required)
                        description = string (Optional)

                        input_schema block "list" (Optional) {
                          json = string (Optional)
                        }
                      }
                    }

                    tool_choice block "list" (Optional) {

                      any block "list" (Optional) {
                      }

                      auto block "list" (Optional) {
                      }

                      tool block "list" (Optional) {
                        name = string (Required)
                      }
                    }
                  }
                }

                text block "list" (Optional) {
                  text = string (Required)

                  cache_point block "list" (Optional) {
                    type = string (Required)
                  }

                  input_variable block "list" (Optional) {
                    name = string (Required)
                  }
                }
              }
            }

            resource block "list" (Optional) {
              prompt_arn = string (Required)
            }
          }
        }

        retrieval block "list" (Optional) {

          service_configuration block "list" (Optional) {

            s3 block "list" (Optional) {
              bucket_name = string (Required)
            }
          }
        }

        storage block "list" (Optional) {

          service_configuration block "list" (Optional) {

            s3 block "list" (Optional) {
              bucket_name = string (Required)
            }
          }
        }
      }

      input block "list" (Optional) {
        expression = string (Required)
        name = string (Required)
        type = string (Required)
        category = string (Optional)
      }

      output block "list" (Optional) {
        name = string (Required)
        type = string (Required)
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
