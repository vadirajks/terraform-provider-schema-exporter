resource "aws_dataexchange_revision_assets" "name" {
  data_set_id = string (Required)
  arn = string (Computed)
  comment = string (Optional)
  created_at = string (Computed)
  finalized = bool (Optional, Computed)
  force_destroy = bool (Optional)
  id = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)
  updated_at = string (Computed)

  asset block "set" (Optional) {
    arn = string (Computed)
    created_at = string (Computed)
    id = string (Computed)
    name = string (Computed)
    updated_at = string (Computed)

    create_s3_data_access_from_s3_bucket block "list" (Optional) {
      access_point_alias = string (Computed)
      access_point_arn = string (Computed)

      asset_source block "list" (Optional) {
        bucket = string (Required)
        key_prefixes = ['set', 'string'] (Optional)
        keys = ['set', 'string'] (Optional)

        kms_keys_to_grant block "list" (Optional) {
          kms_key_arn = string (Required)
        }
      }
    }

    import_assets_from_s3 block "list" (Optional) {

      asset_source block "list" (Optional) {
        bucket = string (Required)
        key = string (Required)
      }
    }

    import_assets_from_signed_url block "list" (Optional) {
      filename = string (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
  }
}
