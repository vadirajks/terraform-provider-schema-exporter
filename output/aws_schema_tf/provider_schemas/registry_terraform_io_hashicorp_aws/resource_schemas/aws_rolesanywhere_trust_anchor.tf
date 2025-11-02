resource "aws_rolesanywhere_trust_anchor" "name" {
  name = string (Required)
  arn = string (Computed)
  enabled = bool (Optional, Computed)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  notification_settings block "set" (Optional) {
    channel = string (Optional, Computed)
    configured_by = string (Computed)
    enabled = bool (Optional, Computed)
    event = string (Optional, Computed)
    threshold = number (Optional, Computed)
  }

  source block "list" (Required) {
    source_type = string (Required)

    source_data block "list" (Required) {
      acm_pca_arn = string (Optional)
      x509_certificate_data = string (Optional)
    }
  }
}
