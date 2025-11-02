resource "aws_lexv2models_intent" "name" {
  bot_id = string (Required)
  bot_version = string (Required)
  locale_id = string (Required)
  name = string (Required)
  creation_date_time = string (Computed)
  description = string (Optional)
  id = string (Computed)
  intent_id = string (Computed)
  last_updated_date_time = string (Computed)
  parent_intent_signature = string (Optional)
  region = string (Optional, Computed)

  closing_setting block "list" (Optional) {
    active = bool (Optional)

    closing_response block "list" (Optional) {
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

    conditional block "list" (Optional) {
      active = bool (Required)

      conditional_branch block "list" (Optional) {
        name = string (Required)

        condition block "list" (Optional) {
          expression_string = string (Required)
        }

        next_step block "list" (Optional) {
          session_attributes = ['map', 'string'] (Optional)

          dialog_action block "list" (Optional) {
            type = string (Required)
            slot_to_elicit = string (Optional)
            suppress_next_message = bool (Optional)
          }

          intent block "list" (Optional) {
            name = string (Optional)

            slot block "set" (Optional) {
              map_block_key = string (Required)
              shape = string (Optional)

              value block "list" (Optional) {
                interpreted_value = string (Optional)
              }
            }
          }
        }

        response block "list" (Optional) {
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

      default_branch block "list" (Optional) {

        next_step block "list" (Optional) {
          session_attributes = ['map', 'string'] (Optional)

          dialog_action block "list" (Optional) {
            type = string (Required)
            slot_to_elicit = string (Optional)
            suppress_next_message = bool (Optional)
          }

          intent block "list" (Optional) {
            name = string (Optional)

            slot block "set" (Optional) {
              map_block_key = string (Required)
              shape = string (Optional)

              value block "list" (Optional) {
                interpreted_value = string (Optional)
              }
            }
          }
        }

        response block "list" (Optional) {
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

    next_step block "list" (Optional) {
      session_attributes = ['map', 'string'] (Optional)

      dialog_action block "list" (Optional) {
        type = string (Required)
        slot_to_elicit = string (Optional)
        suppress_next_message = bool (Optional)
      }

      intent block "list" (Optional) {
        name = string (Optional)

        slot block "set" (Optional) {
          map_block_key = string (Required)
          shape = string (Optional)

          value block "list" (Optional) {
            interpreted_value = string (Optional)
          }
        }
      }
    }
  }

  confirmation_setting block "list" (Optional) {
    active = bool (Optional)

    code_hook block "list" (Optional) {
      active = bool (Required)
      enable_code_hook_invocation = bool (Required)
      invocation_label = string (Optional)

      post_code_hook_specification block "list" (Optional) {

        failure_conditional block "list" (Optional) {
          active = bool (Required)

          conditional_branch block "list" (Optional) {
            name = string (Required)

            condition block "list" (Optional) {
              expression_string = string (Required)
            }

            next_step block "list" (Optional) {
              session_attributes = ['map', 'string'] (Optional)

              dialog_action block "list" (Optional) {
                type = string (Required)
                slot_to_elicit = string (Optional)
                suppress_next_message = bool (Optional)
              }

              intent block "list" (Optional) {
                name = string (Optional)

                slot block "set" (Optional) {
                  map_block_key = string (Required)
                  shape = string (Optional)

                  value block "list" (Optional) {
                    interpreted_value = string (Optional)
                  }
                }
              }
            }

            response block "list" (Optional) {
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

          default_branch block "list" (Optional) {

            next_step block "list" (Optional) {
              session_attributes = ['map', 'string'] (Optional)

              dialog_action block "list" (Optional) {
                type = string (Required)
                slot_to_elicit = string (Optional)
                suppress_next_message = bool (Optional)
              }

              intent block "list" (Optional) {
                name = string (Optional)

                slot block "set" (Optional) {
                  map_block_key = string (Required)
                  shape = string (Optional)

                  value block "list" (Optional) {
                    interpreted_value = string (Optional)
                  }
                }
              }
            }

            response block "list" (Optional) {
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

        failure_next_step block "list" (Optional) {
          session_attributes = ['map', 'string'] (Optional)

          dialog_action block "list" (Optional) {
            type = string (Required)
            slot_to_elicit = string (Optional)
            suppress_next_message = bool (Optional)
          }

          intent block "list" (Optional) {
            name = string (Optional)

            slot block "set" (Optional) {
              map_block_key = string (Required)
              shape = string (Optional)

              value block "list" (Optional) {
                interpreted_value = string (Optional)
              }
            }
          }
        }

        failure_response block "list" (Optional) {
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

        success_conditional block "list" (Optional) {
          active = bool (Required)

          conditional_branch block "list" (Optional) {
            name = string (Required)

            condition block "list" (Optional) {
              expression_string = string (Required)
            }

            next_step block "list" (Optional) {
              session_attributes = ['map', 'string'] (Optional)

              dialog_action block "list" (Optional) {
                type = string (Required)
                slot_to_elicit = string (Optional)
                suppress_next_message = bool (Optional)
              }

              intent block "list" (Optional) {
                name = string (Optional)

                slot block "set" (Optional) {
                  map_block_key = string (Required)
                  shape = string (Optional)

                  value block "list" (Optional) {
                    interpreted_value = string (Optional)
                  }
                }
              }
            }

            response block "list" (Optional) {
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

          default_branch block "list" (Optional) {

            next_step block "list" (Optional) {
              session_attributes = ['map', 'string'] (Optional)

              dialog_action block "list" (Optional) {
                type = string (Required)
                slot_to_elicit = string (Optional)
                suppress_next_message = bool (Optional)
              }

              intent block "list" (Optional) {
                name = string (Optional)

                slot block "set" (Optional) {
                  map_block_key = string (Required)
                  shape = string (Optional)

                  value block "list" (Optional) {
                    interpreted_value = string (Optional)
                  }
                }
              }
            }

            response block "list" (Optional) {
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

        success_next_step block "list" (Optional) {
          session_attributes = ['map', 'string'] (Optional)

          dialog_action block "list" (Optional) {
            type = string (Required)
            slot_to_elicit = string (Optional)
            suppress_next_message = bool (Optional)
          }

          intent block "list" (Optional) {
            name = string (Optional)

            slot block "set" (Optional) {
              map_block_key = string (Required)
              shape = string (Optional)

              value block "list" (Optional) {
                interpreted_value = string (Optional)
              }
            }
          }
        }

        success_response block "list" (Optional) {
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

        timeout_conditional block "list" (Optional) {
          active = bool (Required)

          conditional_branch block "list" (Optional) {
            name = string (Required)

            condition block "list" (Optional) {
              expression_string = string (Required)
            }

            next_step block "list" (Optional) {
              session_attributes = ['map', 'string'] (Optional)

              dialog_action block "list" (Optional) {
                type = string (Required)
                slot_to_elicit = string (Optional)
                suppress_next_message = bool (Optional)
              }

              intent block "list" (Optional) {
                name = string (Optional)

                slot block "set" (Optional) {
                  map_block_key = string (Required)
                  shape = string (Optional)

                  value block "list" (Optional) {
                    interpreted_value = string (Optional)
                  }
                }
              }
            }

            response block "list" (Optional) {
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

          default_branch block "list" (Optional) {

            next_step block "list" (Optional) {
              session_attributes = ['map', 'string'] (Optional)

              dialog_action block "list" (Optional) {
                type = string (Required)
                slot_to_elicit = string (Optional)
                suppress_next_message = bool (Optional)
              }

              intent block "list" (Optional) {
                name = string (Optional)

                slot block "set" (Optional) {
                  map_block_key = string (Required)
                  shape = string (Optional)

                  value block "list" (Optional) {
                    interpreted_value = string (Optional)
                  }
                }
              }
            }

            response block "list" (Optional) {
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

        timeout_next_step block "list" (Optional) {
          session_attributes = ['map', 'string'] (Optional)

          dialog_action block "list" (Optional) {
            type = string (Required)
            slot_to_elicit = string (Optional)
            suppress_next_message = bool (Optional)
          }

          intent block "list" (Optional) {
            name = string (Optional)

            slot block "set" (Optional) {
              map_block_key = string (Required)
              shape = string (Optional)

              value block "list" (Optional) {
                interpreted_value = string (Optional)
              }
            }
          }
        }

        timeout_response block "list" (Optional) {
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

    confirmation_conditional block "list" (Optional) {
      active = bool (Required)

      conditional_branch block "list" (Optional) {
        name = string (Required)

        condition block "list" (Optional) {
          expression_string = string (Required)
        }

        next_step block "list" (Optional) {
          session_attributes = ['map', 'string'] (Optional)

          dialog_action block "list" (Optional) {
            type = string (Required)
            slot_to_elicit = string (Optional)
            suppress_next_message = bool (Optional)
          }

          intent block "list" (Optional) {
            name = string (Optional)

            slot block "set" (Optional) {
              map_block_key = string (Required)
              shape = string (Optional)

              value block "list" (Optional) {
                interpreted_value = string (Optional)
              }
            }
          }
        }

        response block "list" (Optional) {
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

      default_branch block "list" (Optional) {

        next_step block "list" (Optional) {
          session_attributes = ['map', 'string'] (Optional)

          dialog_action block "list" (Optional) {
            type = string (Required)
            slot_to_elicit = string (Optional)
            suppress_next_message = bool (Optional)
          }

          intent block "list" (Optional) {
            name = string (Optional)

            slot block "set" (Optional) {
              map_block_key = string (Required)
              shape = string (Optional)

              value block "list" (Optional) {
                interpreted_value = string (Optional)
              }
            }
          }
        }

        response block "list" (Optional) {
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

    confirmation_next_step block "list" (Optional) {
      session_attributes = ['map', 'string'] (Optional)

      dialog_action block "list" (Optional) {
        type = string (Required)
        slot_to_elicit = string (Optional)
        suppress_next_message = bool (Optional)
      }

      intent block "list" (Optional) {
        name = string (Optional)

        slot block "set" (Optional) {
          map_block_key = string (Required)
          shape = string (Optional)

          value block "list" (Optional) {
            interpreted_value = string (Optional)
          }
        }
      }
    }

    confirmation_response block "list" (Optional) {
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

    declination_conditional block "list" (Optional) {
      active = bool (Required)

      conditional_branch block "list" (Optional) {
        name = string (Required)

        condition block "list" (Optional) {
          expression_string = string (Required)
        }

        next_step block "list" (Optional) {
          session_attributes = ['map', 'string'] (Optional)

          dialog_action block "list" (Optional) {
            type = string (Required)
            slot_to_elicit = string (Optional)
            suppress_next_message = bool (Optional)
          }

          intent block "list" (Optional) {
            name = string (Optional)

            slot block "set" (Optional) {
              map_block_key = string (Required)
              shape = string (Optional)

              value block "list" (Optional) {
                interpreted_value = string (Optional)
              }
            }
          }
        }

        response block "list" (Optional) {
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

      default_branch block "list" (Optional) {

        next_step block "list" (Optional) {
          session_attributes = ['map', 'string'] (Optional)

          dialog_action block "list" (Optional) {
            type = string (Required)
            slot_to_elicit = string (Optional)
            suppress_next_message = bool (Optional)
          }

          intent block "list" (Optional) {
            name = string (Optional)

            slot block "set" (Optional) {
              map_block_key = string (Required)
              shape = string (Optional)

              value block "list" (Optional) {
                interpreted_value = string (Optional)
              }
            }
          }
        }

        response block "list" (Optional) {
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

    declination_next_step block "list" (Optional) {
      session_attributes = ['map', 'string'] (Optional)

      dialog_action block "list" (Optional) {
        type = string (Required)
        slot_to_elicit = string (Optional)
        suppress_next_message = bool (Optional)
      }

      intent block "list" (Optional) {
        name = string (Optional)

        slot block "set" (Optional) {
          map_block_key = string (Required)
          shape = string (Optional)

          value block "list" (Optional) {
            interpreted_value = string (Optional)
          }
        }
      }
    }

    declination_response block "list" (Optional) {
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

    elicitation_code_hook block "list" (Optional) {
      enable_code_hook_invocation = bool (Optional)
      invocation_label = string (Optional)
    }

    failure_conditional block "list" (Optional) {
      active = bool (Required)

      conditional_branch block "list" (Optional) {
        name = string (Required)

        condition block "list" (Optional) {
          expression_string = string (Required)
        }

        next_step block "list" (Optional) {
          session_attributes = ['map', 'string'] (Optional)

          dialog_action block "list" (Optional) {
            type = string (Required)
            slot_to_elicit = string (Optional)
            suppress_next_message = bool (Optional)
          }

          intent block "list" (Optional) {
            name = string (Optional)

            slot block "set" (Optional) {
              map_block_key = string (Required)
              shape = string (Optional)

              value block "list" (Optional) {
                interpreted_value = string (Optional)
              }
            }
          }
        }

        response block "list" (Optional) {
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

      default_branch block "list" (Optional) {

        next_step block "list" (Optional) {
          session_attributes = ['map', 'string'] (Optional)

          dialog_action block "list" (Optional) {
            type = string (Required)
            slot_to_elicit = string (Optional)
            suppress_next_message = bool (Optional)
          }

          intent block "list" (Optional) {
            name = string (Optional)

            slot block "set" (Optional) {
              map_block_key = string (Required)
              shape = string (Optional)

              value block "list" (Optional) {
                interpreted_value = string (Optional)
              }
            }
          }
        }

        response block "list" (Optional) {
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

    failure_next_step block "list" (Optional) {
      session_attributes = ['map', 'string'] (Optional)

      dialog_action block "list" (Optional) {
        type = string (Required)
        slot_to_elicit = string (Optional)
        suppress_next_message = bool (Optional)
      }

      intent block "list" (Optional) {
        name = string (Optional)

        slot block "set" (Optional) {
          map_block_key = string (Required)
          shape = string (Optional)

          value block "list" (Optional) {
            interpreted_value = string (Optional)
          }
        }
      }
    }

    failure_response block "list" (Optional) {
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
  }

  dialog_code_hook block "list" (Optional) {
    enabled = bool (Required)
  }

  fulfillment_code_hook block "list" (Optional) {
    enabled = bool (Required)
    active = bool (Optional)

    fulfillment_updates_specification block "list" (Optional) {
      active = bool (Required)
      timeout_in_seconds = number (Optional)

      start_response block "list" (Optional) {
        allow_interrupt = bool (Optional)
        delay_in_seconds = number (Optional)

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

      update_response block "list" (Optional) {
        frequency_in_seconds = number (Required)
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

    post_fulfillment_status_specification block "list" (Optional) {

      failure_conditional block "list" (Optional) {
        active = bool (Required)

        conditional_branch block "list" (Optional) {
          name = string (Required)

          condition block "list" (Optional) {
            expression_string = string (Required)
          }

          next_step block "list" (Optional) {
            session_attributes = ['map', 'string'] (Optional)

            dialog_action block "list" (Optional) {
              type = string (Required)
              slot_to_elicit = string (Optional)
              suppress_next_message = bool (Optional)
            }

            intent block "list" (Optional) {
              name = string (Optional)

              slot block "set" (Optional) {
                map_block_key = string (Required)
                shape = string (Optional)

                value block "list" (Optional) {
                  interpreted_value = string (Optional)
                }
              }
            }
          }

          response block "list" (Optional) {
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

        default_branch block "list" (Optional) {

          next_step block "list" (Optional) {
            session_attributes = ['map', 'string'] (Optional)

            dialog_action block "list" (Optional) {
              type = string (Required)
              slot_to_elicit = string (Optional)
              suppress_next_message = bool (Optional)
            }

            intent block "list" (Optional) {
              name = string (Optional)

              slot block "set" (Optional) {
                map_block_key = string (Required)
                shape = string (Optional)

                value block "list" (Optional) {
                  interpreted_value = string (Optional)
                }
              }
            }
          }

          response block "list" (Optional) {
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

      failure_next_step block "list" (Optional) {
        session_attributes = ['map', 'string'] (Optional)

        dialog_action block "list" (Optional) {
          type = string (Required)
          slot_to_elicit = string (Optional)
          suppress_next_message = bool (Optional)
        }

        intent block "list" (Optional) {
          name = string (Optional)

          slot block "set" (Optional) {
            map_block_key = string (Required)
            shape = string (Optional)

            value block "list" (Optional) {
              interpreted_value = string (Optional)
            }
          }
        }
      }

      failure_response block "list" (Optional) {
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

      success_conditional block "list" (Optional) {
        active = bool (Required)

        conditional_branch block "list" (Optional) {
          name = string (Required)

          condition block "list" (Optional) {
            expression_string = string (Required)
          }

          next_step block "list" (Optional) {
            session_attributes = ['map', 'string'] (Optional)

            dialog_action block "list" (Optional) {
              type = string (Required)
              slot_to_elicit = string (Optional)
              suppress_next_message = bool (Optional)
            }

            intent block "list" (Optional) {
              name = string (Optional)

              slot block "set" (Optional) {
                map_block_key = string (Required)
                shape = string (Optional)

                value block "list" (Optional) {
                  interpreted_value = string (Optional)
                }
              }
            }
          }

          response block "list" (Optional) {
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

        default_branch block "list" (Optional) {

          next_step block "list" (Optional) {
            session_attributes = ['map', 'string'] (Optional)

            dialog_action block "list" (Optional) {
              type = string (Required)
              slot_to_elicit = string (Optional)
              suppress_next_message = bool (Optional)
            }

            intent block "list" (Optional) {
              name = string (Optional)

              slot block "set" (Optional) {
                map_block_key = string (Required)
                shape = string (Optional)

                value block "list" (Optional) {
                  interpreted_value = string (Optional)
                }
              }
            }
          }

          response block "list" (Optional) {
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

      success_next_step block "list" (Optional) {
        session_attributes = ['map', 'string'] (Optional)

        dialog_action block "list" (Optional) {
          type = string (Required)
          slot_to_elicit = string (Optional)
          suppress_next_message = bool (Optional)
        }

        intent block "list" (Optional) {
          name = string (Optional)

          slot block "set" (Optional) {
            map_block_key = string (Required)
            shape = string (Optional)

            value block "list" (Optional) {
              interpreted_value = string (Optional)
            }
          }
        }
      }

      success_response block "list" (Optional) {
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

      timeout_conditional block "list" (Optional) {
        active = bool (Required)

        conditional_branch block "list" (Optional) {
          name = string (Required)

          condition block "list" (Optional) {
            expression_string = string (Required)
          }

          next_step block "list" (Optional) {
            session_attributes = ['map', 'string'] (Optional)

            dialog_action block "list" (Optional) {
              type = string (Required)
              slot_to_elicit = string (Optional)
              suppress_next_message = bool (Optional)
            }

            intent block "list" (Optional) {
              name = string (Optional)

              slot block "set" (Optional) {
                map_block_key = string (Required)
                shape = string (Optional)

                value block "list" (Optional) {
                  interpreted_value = string (Optional)
                }
              }
            }
          }

          response block "list" (Optional) {
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

        default_branch block "list" (Optional) {

          next_step block "list" (Optional) {
            session_attributes = ['map', 'string'] (Optional)

            dialog_action block "list" (Optional) {
              type = string (Required)
              slot_to_elicit = string (Optional)
              suppress_next_message = bool (Optional)
            }

            intent block "list" (Optional) {
              name = string (Optional)

              slot block "set" (Optional) {
                map_block_key = string (Required)
                shape = string (Optional)

                value block "list" (Optional) {
                  interpreted_value = string (Optional)
                }
              }
            }
          }

          response block "list" (Optional) {
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

      timeout_next_step block "list" (Optional) {
        session_attributes = ['map', 'string'] (Optional)

        dialog_action block "list" (Optional) {
          type = string (Required)
          slot_to_elicit = string (Optional)
          suppress_next_message = bool (Optional)
        }

        intent block "list" (Optional) {
          name = string (Optional)

          slot block "set" (Optional) {
            map_block_key = string (Required)
            shape = string (Optional)

            value block "list" (Optional) {
              interpreted_value = string (Optional)
            }
          }
        }
      }

      timeout_response block "list" (Optional) {
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

  initial_response_setting block "list" (Optional) {

    code_hook block "list" (Optional) {
      active = bool (Required)
      enable_code_hook_invocation = bool (Required)
      invocation_label = string (Optional)

      post_code_hook_specification block "list" (Optional) {

        failure_conditional block "list" (Optional) {
          active = bool (Required)

          conditional_branch block "list" (Optional) {
            name = string (Required)

            condition block "list" (Optional) {
              expression_string = string (Required)
            }

            next_step block "list" (Optional) {
              session_attributes = ['map', 'string'] (Optional)

              dialog_action block "list" (Optional) {
                type = string (Required)
                slot_to_elicit = string (Optional)
                suppress_next_message = bool (Optional)
              }

              intent block "list" (Optional) {
                name = string (Optional)

                slot block "set" (Optional) {
                  map_block_key = string (Required)
                  shape = string (Optional)

                  value block "list" (Optional) {
                    interpreted_value = string (Optional)
                  }
                }
              }
            }

            response block "list" (Optional) {
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

          default_branch block "list" (Optional) {

            next_step block "list" (Optional) {
              session_attributes = ['map', 'string'] (Optional)

              dialog_action block "list" (Optional) {
                type = string (Required)
                slot_to_elicit = string (Optional)
                suppress_next_message = bool (Optional)
              }

              intent block "list" (Optional) {
                name = string (Optional)

                slot block "set" (Optional) {
                  map_block_key = string (Required)
                  shape = string (Optional)

                  value block "list" (Optional) {
                    interpreted_value = string (Optional)
                  }
                }
              }
            }

            response block "list" (Optional) {
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

        failure_next_step block "list" (Optional) {
          session_attributes = ['map', 'string'] (Optional)

          dialog_action block "list" (Optional) {
            type = string (Required)
            slot_to_elicit = string (Optional)
            suppress_next_message = bool (Optional)
          }

          intent block "list" (Optional) {
            name = string (Optional)

            slot block "set" (Optional) {
              map_block_key = string (Required)
              shape = string (Optional)

              value block "list" (Optional) {
                interpreted_value = string (Optional)
              }
            }
          }
        }

        failure_response block "list" (Optional) {
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

        success_conditional block "list" (Optional) {
          active = bool (Required)

          conditional_branch block "list" (Optional) {
            name = string (Required)

            condition block "list" (Optional) {
              expression_string = string (Required)
            }

            next_step block "list" (Optional) {
              session_attributes = ['map', 'string'] (Optional)

              dialog_action block "list" (Optional) {
                type = string (Required)
                slot_to_elicit = string (Optional)
                suppress_next_message = bool (Optional)
              }

              intent block "list" (Optional) {
                name = string (Optional)

                slot block "set" (Optional) {
                  map_block_key = string (Required)
                  shape = string (Optional)

                  value block "list" (Optional) {
                    interpreted_value = string (Optional)
                  }
                }
              }
            }

            response block "list" (Optional) {
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

          default_branch block "list" (Optional) {

            next_step block "list" (Optional) {
              session_attributes = ['map', 'string'] (Optional)

              dialog_action block "list" (Optional) {
                type = string (Required)
                slot_to_elicit = string (Optional)
                suppress_next_message = bool (Optional)
              }

              intent block "list" (Optional) {
                name = string (Optional)

                slot block "set" (Optional) {
                  map_block_key = string (Required)
                  shape = string (Optional)

                  value block "list" (Optional) {
                    interpreted_value = string (Optional)
                  }
                }
              }
            }

            response block "list" (Optional) {
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

        success_next_step block "list" (Optional) {
          session_attributes = ['map', 'string'] (Optional)

          dialog_action block "list" (Optional) {
            type = string (Required)
            slot_to_elicit = string (Optional)
            suppress_next_message = bool (Optional)
          }

          intent block "list" (Optional) {
            name = string (Optional)

            slot block "set" (Optional) {
              map_block_key = string (Required)
              shape = string (Optional)

              value block "list" (Optional) {
                interpreted_value = string (Optional)
              }
            }
          }
        }

        success_response block "list" (Optional) {
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

        timeout_conditional block "list" (Optional) {
          active = bool (Required)

          conditional_branch block "list" (Optional) {
            name = string (Required)

            condition block "list" (Optional) {
              expression_string = string (Required)
            }

            next_step block "list" (Optional) {
              session_attributes = ['map', 'string'] (Optional)

              dialog_action block "list" (Optional) {
                type = string (Required)
                slot_to_elicit = string (Optional)
                suppress_next_message = bool (Optional)
              }

              intent block "list" (Optional) {
                name = string (Optional)

                slot block "set" (Optional) {
                  map_block_key = string (Required)
                  shape = string (Optional)

                  value block "list" (Optional) {
                    interpreted_value = string (Optional)
                  }
                }
              }
            }

            response block "list" (Optional) {
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

          default_branch block "list" (Optional) {

            next_step block "list" (Optional) {
              session_attributes = ['map', 'string'] (Optional)

              dialog_action block "list" (Optional) {
                type = string (Required)
                slot_to_elicit = string (Optional)
                suppress_next_message = bool (Optional)
              }

              intent block "list" (Optional) {
                name = string (Optional)

                slot block "set" (Optional) {
                  map_block_key = string (Required)
                  shape = string (Optional)

                  value block "list" (Optional) {
                    interpreted_value = string (Optional)
                  }
                }
              }
            }

            response block "list" (Optional) {
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

        timeout_next_step block "list" (Optional) {
          session_attributes = ['map', 'string'] (Optional)

          dialog_action block "list" (Optional) {
            type = string (Required)
            slot_to_elicit = string (Optional)
            suppress_next_message = bool (Optional)
          }

          intent block "list" (Optional) {
            name = string (Optional)

            slot block "set" (Optional) {
              map_block_key = string (Required)
              shape = string (Optional)

              value block "list" (Optional) {
                interpreted_value = string (Optional)
              }
            }
          }
        }

        timeout_response block "list" (Optional) {
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

    conditional block "list" (Optional) {
      active = bool (Required)

      conditional_branch block "list" (Optional) {
        name = string (Required)

        condition block "list" (Optional) {
          expression_string = string (Required)
        }

        next_step block "list" (Optional) {
          session_attributes = ['map', 'string'] (Optional)

          dialog_action block "list" (Optional) {
            type = string (Required)
            slot_to_elicit = string (Optional)
            suppress_next_message = bool (Optional)
          }

          intent block "list" (Optional) {
            name = string (Optional)

            slot block "set" (Optional) {
              map_block_key = string (Required)
              shape = string (Optional)

              value block "list" (Optional) {
                interpreted_value = string (Optional)
              }
            }
          }
        }

        response block "list" (Optional) {
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

      default_branch block "list" (Optional) {

        next_step block "list" (Optional) {
          session_attributes = ['map', 'string'] (Optional)

          dialog_action block "list" (Optional) {
            type = string (Required)
            slot_to_elicit = string (Optional)
            suppress_next_message = bool (Optional)
          }

          intent block "list" (Optional) {
            name = string (Optional)

            slot block "set" (Optional) {
              map_block_key = string (Required)
              shape = string (Optional)

              value block "list" (Optional) {
                interpreted_value = string (Optional)
              }
            }
          }
        }

        response block "list" (Optional) {
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

    initial_response block "list" (Optional) {
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

    next_step block "list" (Optional) {
      session_attributes = ['map', 'string'] (Optional)

      dialog_action block "list" (Optional) {
        type = string (Required)
        slot_to_elicit = string (Optional)
        suppress_next_message = bool (Optional)
      }

      intent block "list" (Optional) {
        name = string (Optional)

        slot block "set" (Optional) {
          map_block_key = string (Required)
          shape = string (Optional)

          value block "list" (Optional) {
            interpreted_value = string (Optional)
          }
        }
      }
    }
  }

  input_context block "list" (Optional) {
    name = string (Required)
  }

  kendra_configuration block "list" (Optional) {
    kendra_index = string (Required)
    query_filter_string = string (Optional)
    query_filter_string_enabled = bool (Optional)
  }

  output_context block "list" (Optional) {
    name = string (Required)
    time_to_live_in_seconds = number (Required)
    turns_to_live = number (Required)
  }

  sample_utterance block "list" (Optional) {
    utterance = string (Required)
  }

  slot_priority block "list" (Optional) {
    priority = number (Required)
    slot_id = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
