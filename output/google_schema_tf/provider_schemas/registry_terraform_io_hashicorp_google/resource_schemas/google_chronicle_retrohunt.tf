resource "google_chronicle_retrohunt" "name" {
  instance = string (Required)
  location = string (Required)
  rule = string (Required)
  execution_interval = ['list', ['object', {'end_time': 'string', 'start_time': 'string'}]] (Computed)
  id = string (Optional, Computed)
  name = string (Computed)
  progress_percentage = number (Computed)
  project = string (Optional, Computed)
  retrohunt = string (Optional, Computed)
  state = string (Computed)

  process_interval block "list" (Required) {
    end_time = string (Required)
    start_time = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
