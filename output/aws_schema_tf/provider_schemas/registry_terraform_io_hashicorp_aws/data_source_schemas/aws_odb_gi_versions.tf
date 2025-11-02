data "aws_odb_gi_versions" "name" {
  gi_versions = ['list', ['object', {'version': 'string'}]] (Computed)
  region = string (Optional, Computed)
  shape = string (Optional)
}
