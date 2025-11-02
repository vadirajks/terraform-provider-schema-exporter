data "google_client_openid_userinfo" "name" {
  email = string (Computed)
  id = string (Computed)
}
