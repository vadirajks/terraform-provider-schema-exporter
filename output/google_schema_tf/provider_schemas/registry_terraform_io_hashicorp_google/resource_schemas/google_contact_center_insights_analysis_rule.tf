resource "google_contact_center_insights_analysis_rule" "name" {
  location = string (Required)
  active = bool (Optional)
  analysis_percentage = number (Optional)
  conversation_filter = string (Optional)
  create_time = string (Computed)
  display_name = string (Optional)
  id = string (Optional, Computed)
  name = string (Computed)
  project = string (Optional, Computed)
  update_time = string (Computed)

  annotator_selector block "list" (Optional) {
    issue_models = ['list', 'string'] (Optional)
    phrase_matchers = ['list', 'string'] (Optional)
    run_entity_annotator = bool (Optional)
    run_intent_annotator = bool (Optional)
    run_interruption_annotator = bool (Optional)
    run_issue_model_annotator = bool (Optional)
    run_phrase_matcher_annotator = bool (Optional)
    run_qa_annotator = bool (Optional)
    run_sentiment_annotator = bool (Optional)
    run_silence_annotator = bool (Optional)
    run_summarization_annotator = bool (Optional)

    qa_config block "list" (Optional) {

      scorecard_list block "list" (Optional) {
        qa_scorecard_revisions = ['list', 'string'] (Optional)
      }
    }

    summarization_config block "list" (Optional) {
      conversation_profile = string (Optional)
      summarization_model = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
