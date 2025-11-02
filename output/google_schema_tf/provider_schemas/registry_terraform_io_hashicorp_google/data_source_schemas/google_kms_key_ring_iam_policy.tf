data "google_kms_key_ring_iam_policy" "name" {
  key_ring_id = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  policy_data = string (Computed)
}
