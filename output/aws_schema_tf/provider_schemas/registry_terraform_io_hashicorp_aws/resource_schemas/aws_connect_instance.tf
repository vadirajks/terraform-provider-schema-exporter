resource "aws_connect_instance" "name" {
  identity_management_type = string (Required)
  inbound_calls_enabled = bool (Required)
  outbound_calls_enabled = bool (Required)
  arn = string (Computed)
  auto_resolve_best_voices_enabled = bool (Optional)
  contact_flow_logs_enabled = bool (Optional)
  contact_lens_enabled = bool (Optional)
  created_time = string (Computed)
  directory_id = string (Optional)
  early_media_enabled = bool (Optional)
  id = string (Optional, Computed)
  instance_alias = string (Optional)
  multi_party_conference_enabled = bool (Optional)
  region = string (Optional, Computed)
  service_role = string (Computed)
  status = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
