resource "aws_customerprofiles_profile" "name" {
  domain_name = string (Required)
  account_number = string (Optional)
  additional_information = string (Optional)
  attributes = ['map', 'string'] (Optional)
  birth_date = string (Optional)
  business_email_address = string (Optional)
  business_name = string (Optional)
  business_phone_number = string (Optional)
  email_address = string (Optional)
  first_name = string (Optional)
  gender_string = string (Optional)
  home_phone_number = string (Optional)
  id = string (Optional, Computed)
  last_name = string (Optional)
  middle_name = string (Optional)
  mobile_phone_number = string (Optional)
  party_type_string = string (Optional)
  personal_email_address = string (Optional)
  phone_number = string (Optional)
  region = string (Optional, Computed)

  address block "list" (Optional) {
    address_1 = string (Optional)
    address_2 = string (Optional)
    address_3 = string (Optional)
    address_4 = string (Optional)
    city = string (Optional)
    country = string (Optional)
    county = string (Optional)
    postal_code = string (Optional)
    province = string (Optional)
    state = string (Optional)
  }

  billing_address block "list" (Optional) {
    address_1 = string (Optional)
    address_2 = string (Optional)
    address_3 = string (Optional)
    address_4 = string (Optional)
    city = string (Optional)
    country = string (Optional)
    county = string (Optional)
    postal_code = string (Optional)
    province = string (Optional)
    state = string (Optional)
  }

  mailing_address block "list" (Optional) {
    address_1 = string (Optional)
    address_2 = string (Optional)
    address_3 = string (Optional)
    address_4 = string (Optional)
    city = string (Optional)
    country = string (Optional)
    county = string (Optional)
    postal_code = string (Optional)
    province = string (Optional)
    state = string (Optional)
  }

  shipping_address block "list" (Optional) {
    address_1 = string (Optional)
    address_2 = string (Optional)
    address_3 = string (Optional)
    address_4 = string (Optional)
    city = string (Optional)
    country = string (Optional)
    county = string (Optional)
    postal_code = string (Optional)
    province = string (Optional)
    state = string (Optional)
  }
}
