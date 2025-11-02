resource "google_data_loss_prevention_deidentify_template" "name" {
  parent = string (Required)
  create_time = string (Computed)
  description = string (Optional)
  display_name = string (Optional)
  id = string (Optional, Computed)
  name = string (Computed)
  template_id = string (Optional, Computed)
  update_time = string (Computed)

  deidentify_config block "list" (Required) {

    image_transformations block "list" (Optional) {

      transforms block "list" (Required) {

        all_info_types block "list" (Optional) {
        }

        all_text block "list" (Optional) {
        }

        redaction_color block "list" (Optional) {
          blue = number (Optional)
          green = number (Optional)
          red = number (Optional)
        }

        selected_info_types block "list" (Optional) {

          info_types block "list" (Required) {
            name = string (Required)
            version = string (Optional)

            sensitivity_score block "list" (Optional) {
              score = string (Required)
            }
          }
        }
      }
    }

    info_type_transformations block "list" (Optional) {

      transformations block "list" (Required) {

        info_types block "list" (Optional) {
          name = string (Required)
          version = string (Optional)

          sensitivity_score block "list" (Optional) {
            score = string (Required)
          }
        }

        primitive_transformation block "list" (Required) {
          replace_with_info_type_config = bool (Optional)

          bucketing_config block "list" (Optional) {

            buckets block "list" (Optional) {

              max block "list" (Optional) {
                day_of_week_value = string (Optional)
                float_value = number (Optional)
                integer_value = string (Optional)
                string_value = string (Optional)
                timestamp_value = string (Optional)

                date_value block "list" (Optional) {
                  day = number (Optional)
                  month = number (Optional)
                  year = number (Optional)
                }

                time_value block "list" (Optional) {
                  hours = number (Optional)
                  minutes = number (Optional)
                  nanos = number (Optional)
                  seconds = number (Optional)
                }
              }

              min block "list" (Optional) {
                day_of_week_value = string (Optional)
                float_value = number (Optional)
                integer_value = string (Optional)
                string_value = string (Optional)
                timestamp_value = string (Optional)

                date_value block "list" (Optional) {
                  day = number (Optional)
                  month = number (Optional)
                  year = number (Optional)
                }

                time_value block "list" (Optional) {
                  hours = number (Optional)
                  minutes = number (Optional)
                  nanos = number (Optional)
                  seconds = number (Optional)
                }
              }

              replacement_value block "list" (Required) {
                day_of_week_value = string (Optional)
                float_value = number (Optional)
                integer_value = string (Optional)
                string_value = string (Optional)
                timestamp_value = string (Optional)

                date_value block "list" (Optional) {
                  day = number (Optional)
                  month = number (Optional)
                  year = number (Optional)
                }

                time_value block "list" (Optional) {
                  hours = number (Optional)
                  minutes = number (Optional)
                  nanos = number (Optional)
                  seconds = number (Optional)
                }
              }
            }
          }

          character_mask_config block "list" (Optional) {
            masking_character = string (Optional)
            number_to_mask = number (Optional)
            reverse_order = bool (Optional)

            characters_to_ignore block "list" (Optional) {
              characters_to_skip = string (Optional)
              common_characters_to_ignore = string (Optional)
            }
          }

          crypto_deterministic_config block "list" (Optional) {

            context block "list" (Optional) {
              name = string (Optional)
            }

            crypto_key block "list" (Optional) {

              kms_wrapped block "list" (Optional) {
                crypto_key_name = string (Required)
                wrapped_key = string (Required)
              }

              transient block "list" (Optional) {
                name = string (Required)
              }

              unwrapped block "list" (Optional) {
                key = string (Required)
              }
            }

            surrogate_info_type block "list" (Optional) {
              name = string (Optional)
              version = string (Optional)

              sensitivity_score block "list" (Optional) {
                score = string (Required)
              }
            }
          }

          crypto_hash_config block "list" (Optional) {

            crypto_key block "list" (Optional) {

              kms_wrapped block "list" (Optional) {
                crypto_key_name = string (Required)
                wrapped_key = string (Required)
              }

              transient block "list" (Optional) {
                name = string (Required)
              }

              unwrapped block "list" (Optional) {
                key = string (Required)
              }
            }
          }

          crypto_replace_ffx_fpe_config block "list" (Optional) {
            common_alphabet = string (Optional)
            custom_alphabet = string (Optional)
            radix = number (Optional)

            context block "list" (Optional) {
              name = string (Optional)
            }

            crypto_key block "list" (Optional) {

              kms_wrapped block "list" (Optional) {
                crypto_key_name = string (Required)
                wrapped_key = string (Required)
              }

              transient block "list" (Optional) {
                name = string (Required)
              }

              unwrapped block "list" (Optional) {
                key = string (Required)
              }
            }

            surrogate_info_type block "list" (Optional) {
              name = string (Optional)
              version = string (Optional)

              sensitivity_score block "list" (Optional) {
                score = string (Required)
              }
            }
          }

          date_shift_config block "list" (Optional) {
            lower_bound_days = number (Required)
            upper_bound_days = number (Required)

            context block "list" (Optional) {
              name = string (Required)
            }

            crypto_key block "list" (Optional) {

              kms_wrapped block "list" (Optional) {
                crypto_key_name = string (Required)
                wrapped_key = string (Required)
              }

              transient block "list" (Optional) {
                name = string (Required)
              }

              unwrapped block "list" (Optional) {
                key = string (Required)
              }
            }
          }

          fixed_size_bucketing_config block "list" (Optional) {
            bucket_size = number (Required)

            lower_bound block "list" (Required) {
              float_value = number (Optional)
              integer_value = string (Optional)
            }

            upper_bound block "list" (Required) {
              float_value = number (Optional)
              integer_value = string (Optional)
            }
          }

          redact_config block "list" (Optional) {
          }

          replace_config block "list" (Optional) {

            new_value block "list" (Required) {
              boolean_value = bool (Optional)
              day_of_week_value = string (Optional)
              float_value = number (Optional)
              integer_value = number (Optional)
              string_value = string (Optional)
              timestamp_value = string (Optional)

              date_value block "list" (Optional) {
                day = number (Optional)
                month = number (Optional)
                year = number (Optional)
              }

              time_value block "list" (Optional) {
                hours = number (Optional)
                minutes = number (Optional)
                nanos = number (Optional)
                seconds = number (Optional)
              }
            }
          }

          replace_dictionary_config block "list" (Optional) {

            word_list block "list" (Required) {
              words = ['list', 'string'] (Required)
            }
          }

          time_part_config block "list" (Optional) {
            part_to_extract = string (Optional)
          }
        }
      }
    }

    record_transformations block "list" (Optional) {

      field_transformations block "list" (Optional) {

        condition block "list" (Optional) {

          expressions block "list" (Optional) {
            logical_operator = string (Optional)

            conditions block "list" (Optional) {

              conditions block "list" (Optional) {
                operator = string (Required)

                field block "list" (Required) {
                  name = string (Optional)
                }

                value block "list" (Optional) {
                  boolean_value = bool (Optional)
                  day_of_week_value = string (Optional)
                  float_value = number (Optional)
                  integer_value = string (Optional)
                  string_value = string (Optional)
                  timestamp_value = string (Optional)

                  date_value block "list" (Optional) {
                    day = number (Optional)
                    month = number (Optional)
                    year = number (Optional)
                  }

                  time_value block "list" (Optional) {
                    hours = number (Optional)
                    minutes = number (Optional)
                    nanos = number (Optional)
                    seconds = number (Optional)
                  }
                }
              }
            }
          }
        }

        fields block "list" (Required) {
          name = string (Optional)
        }

        info_type_transformations block "list" (Optional) {

          transformations block "list" (Required) {

            info_types block "list" (Optional) {
              name = string (Required)
              version = string (Optional)

              sensitivity_score block "list" (Optional) {
                score = string (Required)
              }
            }

            primitive_transformation block "list" (Required) {

              bucketing_config block "list" (Optional) {

                buckets block "list" (Required) {

                  max block "list" (Optional) {
                    day_of_week_value = string (Optional)
                    float_value = number (Optional)
                    integer_value = string (Optional)
                    string_value = string (Optional)
                    timestamp_value = string (Optional)

                    date_value block "list" (Optional) {
                      day = number (Optional)
                      month = number (Optional)
                      year = number (Optional)
                    }

                    time_value block "list" (Optional) {
                      hours = number (Optional)
                      minutes = number (Optional)
                      nanos = number (Optional)
                      seconds = number (Optional)
                    }
                  }

                  min block "list" (Optional) {
                    day_of_week_value = string (Optional)
                    float_value = number (Optional)
                    integer_value = string (Optional)
                    string_value = string (Optional)
                    timestamp_value = string (Optional)

                    date_value block "list" (Optional) {
                      day = number (Optional)
                      month = number (Optional)
                      year = number (Optional)
                    }

                    time_value block "list" (Optional) {
                      hours = number (Optional)
                      minutes = number (Optional)
                      nanos = number (Optional)
                      seconds = number (Optional)
                    }
                  }

                  replacement_value block "list" (Required) {
                    day_of_week_value = string (Optional)
                    float_value = number (Optional)
                    integer_value = string (Optional)
                    string_value = string (Optional)
                    timestamp_value = string (Optional)

                    date_value block "list" (Optional) {
                      day = number (Optional)
                      month = number (Optional)
                      year = number (Optional)
                    }

                    time_value block "list" (Optional) {
                      hours = number (Optional)
                      minutes = number (Optional)
                      nanos = number (Optional)
                      seconds = number (Optional)
                    }
                  }
                }
              }

              character_mask_config block "list" (Optional) {
                masking_character = string (Optional)
                number_to_mask = number (Optional)
                reverse_order = bool (Optional)

                characters_to_ignore block "list" (Optional) {
                  characters_to_skip = string (Optional)
                  common_characters_to_ignore = string (Optional)
                }
              }

              crypto_deterministic_config block "list" (Optional) {

                context block "list" (Optional) {
                  name = string (Required)
                }

                crypto_key block "list" (Required) {

                  kms_wrapped block "list" (Optional) {
                    crypto_key_name = string (Required)
                    wrapped_key = string (Required)
                  }

                  transient block "list" (Optional) {
                    name = string (Required)
                  }

                  unwrapped block "list" (Optional) {
                    key = string (Required)
                  }
                }

                surrogate_info_type block "list" (Required) {
                  name = string (Required)
                  version = string (Optional)

                  sensitivity_score block "list" (Optional) {
                    score = string (Required)
                  }
                }
              }

              crypto_hash_config block "list" (Optional) {

                crypto_key block "list" (Required) {

                  kms_wrapped block "list" (Optional) {
                    crypto_key_name = string (Required)
                    wrapped_key = string (Required)
                  }

                  transient block "list" (Optional) {
                    name = string (Required)
                  }

                  unwrapped block "list" (Optional) {
                    key = string (Required)
                  }
                }
              }

              crypto_replace_ffx_fpe_config block "list" (Optional) {
                common_alphabet = string (Optional)
                custom_alphabet = string (Optional)
                radix = number (Optional)

                context block "list" (Optional) {
                  name = string (Required)
                }

                crypto_key block "list" (Required) {

                  kms_wrapped block "list" (Optional) {
                    crypto_key_name = string (Required)
                    wrapped_key = string (Required)
                  }

                  transient block "list" (Optional) {
                    name = string (Required)
                  }

                  unwrapped block "list" (Optional) {
                    key = string (Required)
                  }
                }

                surrogate_info_type block "list" (Optional) {
                  name = string (Required)
                  version = string (Optional)

                  sensitivity_score block "list" (Optional) {
                    score = string (Required)
                  }
                }
              }

              date_shift_config block "list" (Optional) {
                lower_bound_days = number (Required)
                upper_bound_days = number (Required)

                context block "list" (Optional) {
                  name = string (Required)
                }

                crypto_key block "list" (Optional) {

                  kms_wrapped block "list" (Optional) {
                    crypto_key_name = string (Required)
                    wrapped_key = string (Required)
                  }

                  transient block "list" (Optional) {
                    name = string (Required)
                  }

                  unwrapped block "list" (Optional) {
                    key = string (Required)
                  }
                }
              }

              fixed_size_bucketing_config block "list" (Optional) {
                bucket_size = number (Required)

                lower_bound block "list" (Required) {
                  float_value = number (Optional)
                  integer_value = string (Optional)
                }

                upper_bound block "list" (Required) {
                  float_value = number (Optional)
                  integer_value = string (Optional)
                }
              }

              redact_config block "list" (Optional) {
              }

              replace_config block "list" (Optional) {

                new_value block "list" (Required) {
                  boolean_value = bool (Optional)
                  day_of_week_value = string (Optional)
                  float_value = number (Optional)
                  integer_value = string (Optional)
                  string_value = string (Optional)
                  timestamp_value = string (Optional)

                  date_value block "list" (Optional) {
                    day = number (Optional)
                    month = number (Optional)
                    year = number (Optional)
                  }

                  time_value block "list" (Optional) {
                    hours = number (Optional)
                    minutes = number (Optional)
                    nanos = number (Optional)
                    seconds = number (Optional)
                  }
                }
              }

              replace_dictionary_config block "list" (Optional) {

                word_list block "list" (Required) {
                  words = ['list', 'string'] (Required)
                }
              }

              replace_with_info_type_config block "list" (Optional) {
              }

              time_part_config block "list" (Optional) {
                part_to_extract = string (Required)
              }
            }
          }
        }

        primitive_transformation block "list" (Optional) {

          bucketing_config block "list" (Optional) {

            buckets block "list" (Optional) {

              max block "list" (Optional) {
                boolean_value = bool (Optional)
                day_of_week_value = string (Optional)
                float_value = number (Optional)
                integer_value = string (Optional)
                string_value = string (Optional)
                timestamp_value = string (Optional)

                date_value block "list" (Optional) {
                  day = number (Optional)
                  month = number (Optional)
                  year = number (Optional)
                }

                time_value block "list" (Optional) {
                  hours = number (Optional)
                  minutes = number (Optional)
                  nanos = number (Optional)
                  seconds = number (Optional)
                }
              }

              min block "list" (Optional) {
                boolean_value = bool (Optional)
                day_of_week_value = string (Optional)
                float_value = number (Optional)
                integer_value = string (Optional)
                string_value = string (Optional)
                timestamp_value = string (Optional)

                date_value block "list" (Optional) {
                  day = number (Optional)
                  month = number (Optional)
                  year = number (Optional)
                }

                time_value block "list" (Optional) {
                  hours = number (Optional)
                  minutes = number (Optional)
                  nanos = number (Optional)
                  seconds = number (Optional)
                }
              }

              replacement_value block "list" (Required) {
                boolean_value = bool (Optional)
                day_of_week_value = string (Optional)
                float_value = number (Optional)
                integer_value = string (Optional)
                string_value = string (Optional)
                timestamp_value = string (Optional)

                date_value block "list" (Optional) {
                  day = number (Optional)
                  month = number (Optional)
                  year = number (Optional)
                }

                time_value block "list" (Optional) {
                  hours = number (Optional)
                  minutes = number (Optional)
                  nanos = number (Optional)
                  seconds = number (Optional)
                }
              }
            }
          }

          character_mask_config block "list" (Optional) {
            masking_character = string (Optional)
            number_to_mask = number (Optional)
            reverse_order = bool (Optional)

            characters_to_ignore block "list" (Optional) {
              characters_to_skip = string (Optional)
              common_characters_to_ignore = string (Optional)
            }
          }

          crypto_deterministic_config block "list" (Optional) {

            context block "list" (Optional) {
              name = string (Optional)
            }

            crypto_key block "list" (Optional) {

              kms_wrapped block "list" (Optional) {
                crypto_key_name = string (Required)
                wrapped_key = string (Required)
              }

              transient block "list" (Optional) {
                name = string (Required)
              }

              unwrapped block "list" (Optional) {
                key = string (Required)
              }
            }

            surrogate_info_type block "list" (Optional) {
              name = string (Optional)
              version = string (Optional)

              sensitivity_score block "list" (Optional) {
                score = string (Required)
              }
            }
          }

          crypto_hash_config block "list" (Optional) {

            crypto_key block "list" (Optional) {

              kms_wrapped block "list" (Optional) {
                crypto_key_name = string (Required)
                wrapped_key = string (Required)
              }

              transient block "list" (Optional) {
                name = string (Required)
              }

              unwrapped block "list" (Optional) {
                key = string (Required)
              }
            }
          }

          crypto_replace_ffx_fpe_config block "list" (Optional) {
            common_alphabet = string (Optional)
            custom_alphabet = string (Optional)
            radix = number (Optional)

            context block "list" (Optional) {
              name = string (Optional)
            }

            crypto_key block "list" (Optional) {

              kms_wrapped block "list" (Optional) {
                crypto_key_name = string (Required)
                wrapped_key = string (Required)
              }

              transient block "list" (Optional) {
                name = string (Required)
              }

              unwrapped block "list" (Optional) {
                key = string (Required)
              }
            }

            surrogate_info_type block "list" (Optional) {
              name = string (Optional)
              version = string (Optional)

              sensitivity_score block "list" (Optional) {
                score = string (Required)
              }
            }
          }

          date_shift_config block "list" (Optional) {
            lower_bound_days = number (Required)
            upper_bound_days = number (Required)

            context block "list" (Optional) {
              name = string (Optional)
            }

            crypto_key block "list" (Optional) {

              kms_wrapped block "list" (Optional) {
                crypto_key_name = string (Required)
                wrapped_key = string (Required)
              }

              transient block "list" (Optional) {
                name = string (Required)
              }

              unwrapped block "list" (Optional) {
                key = string (Required)
              }
            }
          }

          fixed_size_bucketing_config block "list" (Optional) {
            bucket_size = number (Required)

            lower_bound block "list" (Required) {
              boolean_value = bool (Optional)
              day_of_week_value = string (Optional)
              float_value = number (Optional)
              integer_value = string (Optional)
              string_value = string (Optional)
              timestamp_value = string (Optional)

              date_value block "list" (Optional) {
                day = number (Optional)
                month = number (Optional)
                year = number (Optional)
              }

              time_value block "list" (Optional) {
                hours = number (Optional)
                minutes = number (Optional)
                nanos = number (Optional)
                seconds = number (Optional)
              }
            }

            upper_bound block "list" (Required) {
              boolean_value = bool (Optional)
              day_of_week_value = string (Optional)
              float_value = number (Optional)
              integer_value = string (Optional)
              string_value = string (Optional)
              timestamp_value = string (Optional)

              date_value block "list" (Optional) {
                day = number (Optional)
                month = number (Optional)
                year = number (Optional)
              }

              time_value block "list" (Optional) {
                hours = number (Optional)
                minutes = number (Optional)
                nanos = number (Optional)
                seconds = number (Optional)
              }
            }
          }

          redact_config block "list" (Optional) {
          }

          replace_config block "list" (Optional) {

            new_value block "list" (Required) {
              boolean_value = bool (Optional)
              day_of_week_value = string (Optional)
              float_value = number (Optional)
              integer_value = string (Optional)
              string_value = string (Optional)
              timestamp_value = string (Optional)

              date_value block "list" (Optional) {
                day = number (Optional)
                month = number (Optional)
                year = number (Optional)
              }

              time_value block "list" (Optional) {
                hours = number (Optional)
                minutes = number (Optional)
                nanos = number (Optional)
                seconds = number (Optional)
              }
            }
          }

          replace_dictionary_config block "list" (Optional) {

            word_list block "list" (Optional) {
              words = ['list', 'string'] (Required)
            }
          }

          time_part_config block "list" (Optional) {
            part_to_extract = string (Optional)
          }
        }
      }

      record_suppressions block "list" (Optional) {

        condition block "list" (Optional) {

          expressions block "list" (Optional) {
            logical_operator = string (Optional)

            conditions block "list" (Optional) {

              conditions block "list" (Optional) {
                operator = string (Required)

                field block "list" (Required) {
                  name = string (Optional)
                }

                value block "list" (Optional) {
                  boolean_value = bool (Optional)
                  day_of_week_value = string (Optional)
                  float_value = number (Optional)
                  integer_value = string (Optional)
                  string_value = string (Optional)
                  timestamp_value = string (Optional)

                  date_value block "list" (Optional) {
                    day = number (Optional)
                    month = number (Optional)
                    year = number (Optional)
                  }

                  time_value block "list" (Optional) {
                    hours = number (Optional)
                    minutes = number (Optional)
                    nanos = number (Optional)
                    seconds = number (Optional)
                  }
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
}
