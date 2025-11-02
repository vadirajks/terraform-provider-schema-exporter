resource "aws_bedrockagent_prompt" "name" {
  name = string (Required)
  arn = string (Computed)
  created_at = string (Computed)
  customer_encryption_key_arn = string (Optional)
  default_variant = string (Optional)
  description = string (Optional)
  id = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)
  updated_at = string (Computed)
  version = string (Computed)

  variant block "list" (Optional) {
    name = string (Required)
    template_type = string (Required)
    additional_model_request_fields = string (Optional)
    model_id = string (Optional)

    gen_ai_resource block "list" (Optional) {

      agent block "list" (Optional) {
        agent_identifier = string (Required)
      }
    }

    inference_configuration block "list" (Optional) {

      text block "list" (Optional) {
        max_tokens = number (Optional)
        stop_sequences = ['list', 'string'] (Optional)
        temperature = number (Optional)
        top_p = number (Optional)
      }
    }

    metadata block "list" (Optional) {
      key = string (Required)
      value = string (Required)
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
}
