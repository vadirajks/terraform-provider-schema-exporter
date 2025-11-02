resource "aws_devopsguru_event_sources_config" "name" {
  id = string (Computed)
  region = string (Optional, Computed)

  event_sources block "list" (Optional) {

    amazon_code_guru_profiler block "list" (Optional) {
      status = string (Required)
    }
  }
}
