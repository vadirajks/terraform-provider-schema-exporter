resource "aws_route53domains_registered_domain" "name" {
  domain_name = string (Required)
  abuse_contact_email = string (Computed)
  abuse_contact_phone = string (Computed)
  admin_privacy = bool (Optional)
  auto_renew = bool (Optional)
  billing_privacy = bool (Optional)
  creation_date = string (Computed)
  expiration_date = string (Computed)
  id = string (Optional, Computed)
  registrant_privacy = bool (Optional)
  registrar_name = string (Computed)
  registrar_url = string (Computed)
  reseller = string (Computed)
  status_list = ['list', 'string'] (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  tech_privacy = bool (Optional)
  transfer_lock = bool (Optional)
  updated_date = string (Computed)
  whois_server = string (Computed)

  admin_contact block "list" (Optional) {
    address_line_1 = string (Optional, Computed)
    address_line_2 = string (Optional, Computed)
    city = string (Optional, Computed)
    contact_type = string (Optional, Computed)
    country_code = string (Optional, Computed)
    email = string (Optional, Computed)
    extra_params = ['map', 'string'] (Optional, Computed)
    fax = string (Optional, Computed)
    first_name = string (Optional, Computed)
    last_name = string (Optional, Computed)
    organization_name = string (Optional, Computed)
    phone_number = string (Optional, Computed)
    state = string (Optional, Computed)
    zip_code = string (Optional, Computed)
  }

  billing_contact block "list" (Optional) {
    address_line_1 = string (Optional, Computed)
    address_line_2 = string (Optional, Computed)
    city = string (Optional, Computed)
    contact_type = string (Optional, Computed)
    country_code = string (Optional, Computed)
    email = string (Optional, Computed)
    extra_params = ['map', 'string'] (Optional, Computed)
    fax = string (Optional, Computed)
    first_name = string (Optional, Computed)
    last_name = string (Optional, Computed)
    organization_name = string (Optional, Computed)
    phone_number = string (Optional, Computed)
    state = string (Optional, Computed)
    zip_code = string (Optional, Computed)
  }

  name_server block "list" (Optional) {
    name = string (Required)
    glue_ips = ['set', 'string'] (Optional)
  }

  registrant_contact block "list" (Optional) {
    address_line_1 = string (Optional, Computed)
    address_line_2 = string (Optional, Computed)
    city = string (Optional, Computed)
    contact_type = string (Optional, Computed)
    country_code = string (Optional, Computed)
    email = string (Optional, Computed)
    extra_params = ['map', 'string'] (Optional, Computed)
    fax = string (Optional, Computed)
    first_name = string (Optional, Computed)
    last_name = string (Optional, Computed)
    organization_name = string (Optional, Computed)
    phone_number = string (Optional, Computed)
    state = string (Optional, Computed)
    zip_code = string (Optional, Computed)
  }

  tech_contact block "list" (Optional) {
    address_line_1 = string (Optional, Computed)
    address_line_2 = string (Optional, Computed)
    city = string (Optional, Computed)
    contact_type = string (Optional, Computed)
    country_code = string (Optional, Computed)
    email = string (Optional, Computed)
    extra_params = ['map', 'string'] (Optional, Computed)
    fax = string (Optional, Computed)
    first_name = string (Optional, Computed)
    last_name = string (Optional, Computed)
    organization_name = string (Optional, Computed)
    phone_number = string (Optional, Computed)
    state = string (Optional, Computed)
    zip_code = string (Optional, Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    update = string (Optional)
  }
}
