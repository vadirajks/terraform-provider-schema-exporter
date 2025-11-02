resource "aws_dataexchange_event_action" "name" {
  arn = string (Computed)
  created_at = string (Computed)
  id = string (Computed)
  region = string (Optional, Computed)
  updated_at = string (Computed)

  action block "list" (Optional) {

    export_revision_to_s3 block "list" (Optional) {

      encryption block "list" (Optional) {
        kms_key_arn = string (Optional)
        type = string (Optional)
      }

      revision_destination block "list" (Optional) {
        bucket = string (Required)
        key_pattern = string (Optional, Computed)
      }
    }
  }

  event block "list" (Optional) {

    revision_published block "list" (Optional) {
      data_set_id = string (Required)
    }
  }
}
