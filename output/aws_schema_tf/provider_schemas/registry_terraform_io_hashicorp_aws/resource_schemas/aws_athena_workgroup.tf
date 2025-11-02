resource "aws_athena_workgroup" "name" {
  name = string (Required)
  arn = string (Computed)
  description = string (Optional)
  force_destroy = bool (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  state = string (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  configuration block "list" (Optional) {
    bytes_scanned_cutoff_per_query = number (Optional)
    enforce_workgroup_configuration = bool (Optional)
    execution_role = string (Optional)
    publish_cloudwatch_metrics_enabled = bool (Optional)
    requester_pays_enabled = bool (Optional)

    engine_version block "list" (Optional) {
      effective_engine_version = string (Computed)
      selected_engine_version = string (Optional)
    }

    identity_center_configuration block "list" (Optional) {
      enable_identity_center = bool (Optional)
      identity_center_instance_arn = string (Optional)
    }

    result_configuration block "list" (Optional) {
      expected_bucket_owner = string (Optional)
      output_location = string (Optional)

      acl_configuration block "list" (Optional) {
        s3_acl_option = string (Required)
      }

      encryption_configuration block "list" (Optional) {
        encryption_option = string (Optional)
        kms_key_arn = string (Optional)
      }
    }
  }
}
