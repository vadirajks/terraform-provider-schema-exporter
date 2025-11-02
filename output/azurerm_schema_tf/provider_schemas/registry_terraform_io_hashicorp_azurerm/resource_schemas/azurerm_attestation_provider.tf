resource "azurerm_attestation_provider" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  attestation_uri = string (Computed)
  id = string (Optional, Computed)
  open_enclave_policy_base64 = string (Optional)
  policy_signing_certificate_data = string (Optional)
  sev_snp_policy_base64 = string (Optional)
  sgx_enclave_policy_base64 = string (Optional)
  tags = ['map', 'string'] (Optional)
  tpm_policy_base64 = string (Optional)
  trust_model = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
