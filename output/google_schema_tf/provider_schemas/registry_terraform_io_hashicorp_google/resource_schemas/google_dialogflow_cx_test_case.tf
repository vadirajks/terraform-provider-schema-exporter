resource "google_dialogflow_cx_test_case" "name" {
  display_name = string (Required)
  creation_time = string (Computed)
  id = string (Optional, Computed)
  last_test_result = ['list', ['object', {'conversation_turns': ['list', ['object', {'user_input': ['list', ['object', {'enable_sentiment_analysis': 'bool', 'injected_parameters': 'string', 'input': ['list', ['object', {'dtmf': ['list', ['object', {'digits': 'string', 'finish_digit': 'string'}]], 'event': ['list', ['object', {'event': 'string'}]], 'language_code': 'string', 'text': ['list', ['object', {'text': 'string'}]]}]], 'is_webhook_enabled': 'bool'}]], 'virtual_agent_output': ['list', ['object', {'current_page': ['list', ['object', {'display_name': 'string', 'name': 'string'}]], 'differences': ['list', ['object', {'description': 'string', 'type': 'string'}]], 'session_parameters': 'string', 'status': ['list', ['object', {'code': 'number', 'details': 'string', 'message': 'string'}]], 'text_responses': ['list', ['object', {'text': ['list', 'string']}]], 'triggered_intent': ['list', ['object', {'display_name': 'string', 'name': 'string'}]]}]]}]], 'environment': 'string', 'name': 'string', 'test_result': 'string', 'test_time': 'string'}]] (Computed)
  name = string (Computed)
  notes = string (Optional)
  parent = string (Optional)
  tags = ['list', 'string'] (Optional)

  test_case_conversation_turns block "list" (Optional) {

    user_input block "list" (Optional) {
      enable_sentiment_analysis = bool (Optional)
      injected_parameters = string (Optional)
      is_webhook_enabled = bool (Optional)

      input block "list" (Optional) {
        language_code = string (Optional)

        dtmf block "list" (Optional) {
          digits = string (Optional)
          finish_digit = string (Optional)
        }

        event block "list" (Optional) {
          event = string (Required)
        }

        text block "list" (Optional) {
          text = string (Required)
        }
      }
    }

    virtual_agent_output block "list" (Optional) {
      session_parameters = string (Optional)

      current_page block "list" (Optional) {
        display_name = string (Computed)
        name = string (Optional)
      }

      text_responses block "list" (Optional) {
        text = ['list', 'string'] (Optional)
      }

      triggered_intent block "list" (Optional) {
        display_name = string (Computed)
        name = string (Optional)
      }
    }
  }

  test_config block "list" (Optional) {
    flow = string (Optional)
    page = string (Optional)
    tracking_parameters = ['list', 'string'] (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
