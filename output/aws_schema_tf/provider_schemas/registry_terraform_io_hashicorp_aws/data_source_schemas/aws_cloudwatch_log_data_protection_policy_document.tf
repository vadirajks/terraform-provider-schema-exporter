data "aws_cloudwatch_log_data_protection_policy_document" "name" {
  name = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)
  json = string (Computed)
  version = string (Optional)

  configuration block "list" (Optional) {

    custom_data_identifier block "list" (Optional) {
      name = string (Required)
      regex = string (Required)
    }
  }

  statement block "list" (Required) {
    data_identifiers = ['set', 'string'] (Required)
    sid = string (Optional)

    operation block "list" (Required) {

      audit block "list" (Optional) {

        findings_destination block "list" (Required) {

          cloudwatch_logs block "list" (Optional) {
            log_group = string (Required)
          }

          firehose block "list" (Optional) {
            delivery_stream = string (Required)
          }

          s3 block "list" (Optional) {
            bucket = string (Required)
          }
        }
      }

      deidentify block "list" (Optional) {

        mask_config block "list" (Required) {
        }
      }
    }
  }
}
