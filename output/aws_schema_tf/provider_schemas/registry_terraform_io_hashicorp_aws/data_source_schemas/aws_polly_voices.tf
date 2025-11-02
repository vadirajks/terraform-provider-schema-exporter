data "aws_polly_voices" "name" {
  engine = string (Optional)
  id = string (Computed)
  include_additional_language_codes = bool (Optional)
  language_code = string (Optional)
  region = string (Optional, Computed)

  voices block "list" (Optional) {
    additional_language_codes = ['list', 'string'] (Computed)
    gender = string (Computed)
    id = string (Computed)
    language_code = string (Computed)
    language_name = string (Computed)
    name = string (Computed)
    supported_engines = ['list', 'string'] (Computed)
  }
}
