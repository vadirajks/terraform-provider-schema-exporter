resource "aws_signer_signing_job" "name" {
  profile_name = string (Required)
  completed_at = string (Computed)
  created_at = string (Computed)
  id = string (Optional, Computed)
  ignore_signing_job_failure = bool (Optional)
  job_id = string (Computed)
  job_invoker = string (Computed)
  job_owner = string (Computed)
  platform_display_name = string (Computed)
  platform_id = string (Computed)
  profile_version = string (Computed)
  region = string (Optional, Computed)
  requested_by = string (Computed)
  revocation_record = ['list', ['object', {'reason': 'string', 'revoked_at': 'string', 'revoked_by': 'string'}]] (Computed)
  signature_expires_at = string (Computed)
  signed_object = ['list', ['object', {'s3': ['list', ['object', {'bucket': 'string', 'key': 'string'}]]}]] (Computed)
  status = string (Computed)
  status_reason = string (Computed)

  destination block "list" (Required) {

    s3 block "list" (Required) {
      bucket = string (Required)
      prefix = string (Optional)
    }
  }

  source block "list" (Required) {

    s3 block "list" (Required) {
      bucket = string (Required)
      key = string (Required)
      version = string (Required)
    }
  }
}
