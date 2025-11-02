resource "google_dialogflow_cx_agent" "name" {
  default_language_code = string (Required)
  display_name = string (Required)
  location = string (Required)
  time_zone = string (Required)
  avatar_uri = string (Optional)
  delete_chat_engine_on_destroy = bool (Optional)
  description = string (Optional)
  enable_multi_language_training = bool (Optional)
  enable_spell_correction = bool (Optional)
  enable_stackdriver_logging = bool (Optional)
  id = string (Optional, Computed)
  locked = bool (Optional)
  name = string (Computed)
  project = string (Optional, Computed)
  satisfies_pzi = bool (Computed)
  satisfies_pzs = bool (Computed)
  security_settings = string (Optional)
  start_flow = string (Computed)
  start_playbook = string (Optional)
  supported_language_codes = ['list', 'string'] (Optional)

  advanced_settings block "list" (Optional) {

    audio_export_gcs_destination block "list" (Optional) {
      uri = string (Optional)
    }

    dtmf_settings block "list" (Optional) {
      enabled = bool (Optional)
      finish_digit = string (Optional)
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

  answer_feedback_settings block "list" (Optional) {
    enable_answer_feedback = bool (Optional)
  }

  client_certificate_settings block "list" (Optional) {
    private_key = string (Required)
    ssl_certificate = string (Required)
    passphrase = string (Optional)
  }

  gen_app_builder_settings block "list" (Optional) {
    engine = string (Required)
  }

  git_integration_settings block "list" (Optional) {

    github_settings block "list" (Optional) {
      access_token = string (Optional)
      branches = ['list', 'string'] (Optional)
      display_name = string (Optional)
      repository_uri = string (Optional)
      tracking_branch = string (Optional)
    }
  }

  personalization_settings block "list" (Optional) {
    default_end_user_metadata = string (Optional)
  }

  speech_to_text_settings block "list" (Optional) {
    enable_speech_adaptation = bool (Optional)
  }

  text_to_speech_settings block "list" (Optional) {
    synthesize_speech_configs = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
