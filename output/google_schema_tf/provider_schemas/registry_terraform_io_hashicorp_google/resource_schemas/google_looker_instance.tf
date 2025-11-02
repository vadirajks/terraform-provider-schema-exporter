resource "google_looker_instance" "name" {
  name = string (Required)
  consumer_network = string (Optional)
  create_time = string (Computed)
  deletion_policy = string (Optional)
  egress_public_ip = string (Computed)
  fips_enabled = bool (Optional)
  gemini_enabled = bool (Optional)
  id = string (Optional, Computed)
  ingress_private_ip = string (Computed)
  ingress_public_ip = string (Computed)
  looker_uri = string (Computed)
  looker_version = string (Computed)
  platform_edition = string (Optional)
  private_ip_enabled = bool (Optional)
  project = string (Optional, Computed)
  psc_enabled = bool (Optional)
  public_ip_enabled = bool (Optional)
  region = string (Optional, Computed)
  reserved_range = string (Optional)
  update_time = string (Computed)

  admin_settings block "list" (Optional) {
    allowed_email_domains = ['list', 'string'] (Optional)
  }

  custom_domain block "list" (Optional) {
    domain = string (Optional)
    state = string (Computed)
  }

  deny_maintenance_period block "list" (Optional) {

    end_date block "list" (Required) {
      day = number (Optional)
      month = number (Optional)
      year = number (Optional)
    }

    start_date block "list" (Required) {
      day = number (Optional)
      month = number (Optional)
      year = number (Optional)
    }

    time block "list" (Required) {
      hours = number (Optional)
      minutes = number (Optional)
      nanos = number (Optional)
      seconds = number (Optional)
    }
  }

  encryption_config block "list" (Optional) {
    kms_key_name = string (Optional)
    kms_key_name_version = string (Computed)
    kms_key_state = string (Computed)
  }

  maintenance_window block "list" (Optional) {
    day_of_week = string (Required)

    start_time block "list" (Required) {
      hours = number (Optional)
      minutes = number (Optional)
      nanos = number (Optional)
      seconds = number (Optional)
    }
  }

  oauth_config block "list" (Required) {
    client_id = string (Required)
    client_secret = string (Required)
  }

  psc_config block "list" (Optional) {
    allowed_vpcs = ['list', 'string'] (Optional)
    looker_service_attachment_uri = string (Computed)

    service_attachments block "list" (Optional) {
      connection_status = string (Computed)
      local_fqdn = string (Optional)
      target_service_attachment_uri = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  user_metadata block "list" (Optional) {
    additional_developer_user_count = number (Optional)
    additional_standard_user_count = number (Optional)
    additional_viewer_user_count = number (Optional)
  }
}
