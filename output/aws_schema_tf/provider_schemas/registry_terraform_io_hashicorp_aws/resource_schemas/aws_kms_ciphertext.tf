resource "aws_kms_ciphertext" "name" {
  key_id = string (Required)
  plaintext = string (Required)
  ciphertext_blob = string (Computed)
  context = ['map', 'string'] (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
