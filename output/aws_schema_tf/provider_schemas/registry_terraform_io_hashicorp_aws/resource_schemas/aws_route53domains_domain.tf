resource "aws_route53domains_domain" "name" {
  domain_name = string (Required)
  abuse_contact_email = string (Computed)
  abuse_contact_phone = string (Computed)
  admin_privacy = bool (Optional, Computed)
  auto_renew = bool (Optional, Computed)
  billing_contact = ['list', ['object', {'address_line_1': 'string', 'address_line_2': 'string', 'city': 'string', 'contact_type': 'string', 'country_code': 'string', 'email': 'string', 'extra_param': ['list', ['object', {'name': 'string', 'value': 'string'}]], 'fax': 'string', 'first_name': 'string', 'last_name': 'string', 'organization_name': 'string', 'phone_number': 'string', 'state': 'string', 'zip_code': 'string'}]] (Optional, Computed)
  billing_privacy = bool (Optional, Computed)
  creation_date = string (Computed)
  duration_in_years = number (Optional, Computed)
  expiration_date = string (Computed)
  hosted_zone_id = string (Computed)
  name_server = ['list', ['object', {'glue_ips': ['set', 'string'], 'name': 'string'}]] (Optional, Computed)
  registrant_privacy = bool (Optional, Computed)
  registrar_name = string (Computed)
  registrar_url = string (Computed)
  status_list = ['list', 'string'] (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)
  tech_privacy = bool (Optional, Computed)
  transfer_lock = bool (Optional, Computed)
  updated_date = string (Computed)
  whois_server = string (Computed)

  admin_contact block "list" (Optional) {
    address_line_1 = string (Optional)
    address_line_2 = string (Optional)
    city = string (Optional)
    contact_type = string (Optional)
    country_code = string (Optional)
    email = string (Optional)
    fax = string (Optional)
    first_name = string (Optional)
    last_name = string (Optional)
    organization_name = string (Optional)
    phone_number = string (Optional)
    state = string (Optional)
    zip_code = string (Optional)

    extra_param block "list" (Optional) {
      name = string (Required)
      value = string (Required)
    }
  }

  registrant_contact block "list" (Optional) {
    address_line_1 = string (Optional)
    address_line_2 = string (Optional)
    city = string (Optional)
    contact_type = string (Optional)
    country_code = string (Optional)
    email = string (Optional)
    fax = string (Optional)
    first_name = string (Optional)
    last_name = string (Optional)
    organization_name = string (Optional)
    phone_number = string (Optional)
    state = string (Optional)
    zip_code = string (Optional)

    extra_param block "list" (Optional) {
      name = string (Required)
      value = string (Required)
    }
  }

  tech_contact block "list" (Optional) {
    address_line_1 = string (Optional)
    address_line_2 = string (Optional)
    city = string (Optional)
    contact_type = string (Optional)
    country_code = string (Optional)
    email = string (Optional)
    fax = string (Optional)
    first_name = string (Optional)
    last_name = string (Optional)
    organization_name = string (Optional)
    phone_number = string (Optional)
    state = string (Optional)
    zip_code = string (Optional)

    extra_param block "list" (Optional) {
      name = string (Required)
      value = string (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
