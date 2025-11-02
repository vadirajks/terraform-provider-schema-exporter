resource "aws_cognito_user_pool" "name" {
  name = string (Required)
  alias_attributes = ['set', 'string'] (Optional)
  arn = string (Computed)
  auto_verified_attributes = ['set', 'string'] (Optional)
  creation_date = string (Computed)
  custom_domain = string (Computed)
  deletion_protection = string (Optional)
  domain = string (Computed)
  email_verification_message = string (Optional, Computed)
  email_verification_subject = string (Optional, Computed)
  endpoint = string (Computed)
  estimated_number_of_users = number (Computed)
  id = string (Optional, Computed)
  last_modified_date = string (Computed)
  mfa_configuration = string (Optional)
  region = string (Optional, Computed)
  sms_authentication_message = string (Optional)
  sms_verification_message = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  user_pool_tier = string (Optional, Computed)
  username_attributes = ['set', 'string'] (Optional)

  account_recovery_setting block "list" (Optional) {

    recovery_mechanism block "set" (Optional) {
      name = string (Required)
      priority = number (Required)
    }
  }

  admin_create_user_config block "list" (Optional) {
    allow_admin_create_user_only = bool (Optional)

    invite_message_template block "list" (Optional) {
      email_message = string (Optional)
      email_subject = string (Optional)
      sms_message = string (Optional)
    }
  }

  device_configuration block "list" (Optional) {
    challenge_required_on_new_device = bool (Optional)
    device_only_remembered_on_user_prompt = bool (Optional)
  }

  email_configuration block "list" (Optional) {
    configuration_set = string (Optional)
    email_sending_account = string (Optional)
    from_email_address = string (Optional)
    reply_to_email_address = string (Optional)
    source_arn = string (Optional)
  }

  email_mfa_configuration block "list" (Optional) {
    message = string (Optional)
    subject = string (Optional)
  }

  lambda_config block "list" (Optional) {
    create_auth_challenge = string (Optional)
    custom_message = string (Optional)
    define_auth_challenge = string (Optional)
    kms_key_id = string (Optional)
    post_authentication = string (Optional)
    post_confirmation = string (Optional)
    pre_authentication = string (Optional)
    pre_sign_up = string (Optional)
    pre_token_generation = string (Optional, Computed)
    user_migration = string (Optional)
    verify_auth_challenge_response = string (Optional)

    custom_email_sender block "list" (Optional) {
      lambda_arn = string (Required)
      lambda_version = string (Required)
    }

    custom_sms_sender block "list" (Optional) {
      lambda_arn = string (Required)
      lambda_version = string (Required)
    }

    pre_token_generation_config block "list" (Optional) {
      lambda_arn = string (Required)
      lambda_version = string (Required)
    }
  }

  password_policy block "list" (Optional) {
    minimum_length = number (Optional)
    password_history_size = number (Optional)
    require_lowercase = bool (Optional)
    require_numbers = bool (Optional)
    require_symbols = bool (Optional)
    require_uppercase = bool (Optional)
    temporary_password_validity_days = number (Optional, Computed)
  }

  schema block "set" (Optional) {
    attribute_data_type = string (Required)
    name = string (Required)
    developer_only_attribute = bool (Optional)
    mutable = bool (Optional)
    required = bool (Optional)

    number_attribute_constraints block "list" (Optional) {
      max_value = string (Optional)
      min_value = string (Optional)
    }

    string_attribute_constraints block "list" (Optional) {
      max_length = string (Optional)
      min_length = string (Optional)
    }
  }

  sign_in_policy block "list" (Optional) {
    allowed_first_auth_factors = ['set', 'string'] (Optional)
  }

  sms_configuration block "list" (Optional) {
    external_id = string (Required)
    sns_caller_arn = string (Required)
    sns_region = string (Optional, Computed)
  }

  software_token_mfa_configuration block "list" (Optional) {
    enabled = bool (Required)
  }

  user_attribute_update_settings block "list" (Optional) {
    attributes_require_verification_before_update = ['set', 'string'] (Required)
  }

  user_pool_add_ons block "list" (Optional) {
    advanced_security_mode = string (Required)

    advanced_security_additional_flows block "list" (Optional) {
      custom_auth_mode = string (Optional, Computed)
    }
  }

  username_configuration block "list" (Optional) {
    case_sensitive = bool (Optional, Computed)
  }

  verification_message_template block "list" (Optional) {
    default_email_option = string (Optional)
    email_message = string (Optional, Computed)
    email_message_by_link = string (Optional, Computed)
    email_subject = string (Optional, Computed)
    email_subject_by_link = string (Optional, Computed)
    sms_message = string (Optional, Computed)
  }

  web_authn_configuration block "list" (Optional) {
    relying_party_id = string (Optional)
    user_verification = string (Optional)
  }
}
