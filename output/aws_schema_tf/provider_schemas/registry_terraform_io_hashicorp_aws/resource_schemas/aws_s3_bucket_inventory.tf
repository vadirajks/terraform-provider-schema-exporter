resource "aws_s3_bucket_inventory" "name" {
  bucket = string (Required)
  included_object_versions = string (Required)
  name = string (Required)
  enabled = bool (Optional)
  id = string (Optional, Computed)
  optional_fields = ['set', 'string'] (Optional)
  region = string (Optional, Computed)

  destination block "list" (Required) {

    bucket block "list" (Required) {
      bucket_arn = string (Required)
      format = string (Required)
      account_id = string (Optional)
      prefix = string (Optional)

      encryption block "list" (Optional) {

        sse_kms block "list" (Optional) {
          key_id = string (Required)
        }

        sse_s3 block "list" (Optional) {
        }
      }
    }
  }

  filter block "list" (Optional) {
    prefix = string (Optional)
  }

  schedule block "list" (Required) {
    frequency = string (Required)
  }
}
