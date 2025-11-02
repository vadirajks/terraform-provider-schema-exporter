data "google_dataplex_data_quality_rules" "name" {
  data_scan_id = string (Required)
  id = string (Optional, Computed)
  location = string (Optional)
  project = string (Optional)
  rules = ['list', ['object', {'column': 'string', 'description': 'string', 'dimension': 'string', 'ignore_null': 'bool', 'name': 'string', 'non_null_expectation': ['list', ['object', {}]], 'range_expectation': ['list', ['object', {'max_value': 'string', 'min_value': 'string', 'strict_max_enabled': 'bool', 'strict_min_enabled': 'bool'}]], 'regex_expectation': ['list', ['object', {'regex': 'string'}]], 'row_condition_expectation': ['list', ['object', {'sql_expression': 'string'}]], 'set_expectation': ['list', ['object', {'values': ['list', 'string']}]], 'sql_assertion': ['list', ['object', {'sql_statement': 'string'}]], 'statistic_range_expectation': ['list', ['object', {'max_value': 'string', 'min_value': 'string', 'statistic': 'string', 'strict_max_enabled': 'bool', 'strict_min_enabled': 'bool'}]], 'suspended': 'bool', 'table_condition_expectation': ['list', ['object', {'sql_expression': 'string'}]], 'threshold': 'number', 'uniqueness_expectation': ['list', ['object', {}]]}]] (Computed)
}
