resource "aws_s3_bucket" "name" {
  acceleration_status = string (Optional, Computed)
  acl = string (Optional, Computed)
  arn = string (Computed)
  bucket = string (Optional, Computed)
  bucket_domain_name = string (Computed)
  bucket_prefix = string (Optional, Computed)
  bucket_region = string (Computed)
  bucket_regional_domain_name = string (Computed)
  force_destroy = bool (Optional)
  hosted_zone_id = string (Computed)
  id = string (Optional, Computed)
  object_lock_enabled = bool (Optional, Computed)
  policy = string (Optional, Computed)
  region = string (Optional, Computed)
  request_payer = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  website_domain = string (Computed)
  website_endpoint = string (Computed)

  cors_rule block "list" (Optional) {
    allowed_methods = ['list', 'string'] (Required)
    allowed_origins = ['list', 'string'] (Required)
    allowed_headers = ['list', 'string'] (Optional)
    expose_headers = ['list', 'string'] (Optional)
    max_age_seconds = number (Optional)
  }

  grant block "set" (Optional) {
    permissions = ['set', 'string'] (Required)
    type = string (Required)
    id = string (Optional)
    uri = string (Optional)
  }

  lifecycle_rule block "list" (Optional) {
    enabled = bool (Required)
    abort_incomplete_multipart_upload_days = number (Optional)
    id = string (Optional, Computed)
    prefix = string (Optional)
    tags = ['map', 'string'] (Optional)

    expiration block "list" (Optional) {
      date = string (Optional)
      days = number (Optional)
      expired_object_delete_marker = bool (Optional)
    }

    noncurrent_version_expiration block "list" (Optional) {
      days = number (Optional)
    }

    noncurrent_version_transition block "set" (Optional) {
      storage_class = string (Required)
      days = number (Optional)
    }

    transition block "set" (Optional) {
      storage_class = string (Required)
      date = string (Optional)
      days = number (Optional)
    }
  }

  logging block "list" (Optional) {
    target_bucket = string (Required)
    target_prefix = string (Optional)
  }

  object_lock_configuration block "list" (Optional) {
    object_lock_enabled = string (Optional)

    rule block "list" (Optional) {

      default_retention block "list" (Required) {
        mode = string (Required)
        days = number (Optional)
        years = number (Optional)
      }
    }
  }

  replication_configuration block "list" (Optional) {
    role = string (Required)

    rules block "set" (Required) {
      status = string (Required)
      delete_marker_replication_status = string (Optional)
      id = string (Optional)
      prefix = string (Optional)
      priority = number (Optional)

      destination block "list" (Required) {
        bucket = string (Required)
        account_id = string (Optional)
        replica_kms_key_id = string (Optional)
        storage_class = string (Optional)

        access_control_translation block "list" (Optional) {
          owner = string (Required)
        }

        metrics block "list" (Optional) {
          minutes = number (Optional)
          status = string (Optional)
        }

        replication_time block "list" (Optional) {
          minutes = number (Optional)
          status = string (Optional)
        }
      }

      filter block "list" (Optional) {
        prefix = string (Optional)
        tags = ['map', 'string'] (Optional)
      }

      source_selection_criteria block "list" (Optional) {

        sse_kms_encrypted_objects block "list" (Optional) {
          enabled = bool (Required)
        }
      }
    }
  }

  server_side_encryption_configuration block "list" (Optional) {

    rule block "list" (Required) {
      bucket_key_enabled = bool (Optional)

      apply_server_side_encryption_by_default block "list" (Required) {
        sse_algorithm = string (Required)
        kms_master_key_id = string (Optional)
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }

  versioning block "list" (Optional) {
    enabled = bool (Optional)
    mfa_delete = bool (Optional)
  }

  website block "list" (Optional) {
    error_document = string (Optional)
    index_document = string (Optional)
    redirect_all_requests_to = string (Optional)
    routing_rules = string (Optional)
  }
}
