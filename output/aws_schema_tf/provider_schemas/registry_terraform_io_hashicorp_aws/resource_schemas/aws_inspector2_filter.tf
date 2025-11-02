resource "aws_inspector2_filter" "name" {
  action = string (Required)
  name = string (Required)
  arn = string (Computed)
  description = string (Optional)
  reason = string (Optional)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)

  filter_criteria block "list" (Optional) {

    aws_account_id block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    code_repository_project_name block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    code_repository_provider_type block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    code_vulnerability_detector_name block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    code_vulnerability_detector_tags block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    code_vulnerability_file_path block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    component_id block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    component_type block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    ec2_instance_image_id block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    ec2_instance_subnet_id block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    ec2_instance_vpc_id block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    ecr_image_architecture block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    ecr_image_hash block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    ecr_image_in_use_count block "set" (Optional) {
      lower_inclusive = number (Required)
      upper_inclusive = number (Required)
    }

    ecr_image_last_in_use_at block "set" (Optional) {
      end_inclusive = string (Optional)
      start_inclusive = string (Optional)
    }

    ecr_image_pushed_at block "set" (Optional) {
      end_inclusive = string (Optional)
      start_inclusive = string (Optional)
    }

    ecr_image_registry block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    ecr_image_repository_name block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    ecr_image_tags block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    epss_score block "set" (Optional) {
      lower_inclusive = number (Required)
      upper_inclusive = number (Required)
    }

    exploit_available block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    finding_arn block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    finding_status block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    finding_type block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    first_observed_at block "set" (Optional) {
      end_inclusive = string (Optional)
      start_inclusive = string (Optional)
    }

    fix_available block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    inspector_score block "set" (Optional) {
      lower_inclusive = number (Required)
      upper_inclusive = number (Required)
    }

    lambda_function_execution_role_arn block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    lambda_function_last_modified_at block "set" (Optional) {
      end_inclusive = string (Optional)
      start_inclusive = string (Optional)
    }

    lambda_function_layers block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    lambda_function_name block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    lambda_function_runtime block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    last_observed_at block "set" (Optional) {
      end_inclusive = string (Optional)
      start_inclusive = string (Optional)
    }

    network_protocol block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    port_range block "set" (Optional) {
      begin_inclusive = number (Required)
      end_inclusive = number (Required)
    }

    related_vulnerabilities block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    resource_id block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    resource_tags block "set" (Optional) {
      comparison = string (Required)
      key = string (Required)
      value = string (Required)
    }

    resource_type block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    severity block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    title block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    updated_at block "set" (Optional) {
      end_inclusive = string (Optional)
      start_inclusive = string (Optional)
    }

    vendor_severity block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    vulnerability_id block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    vulnerability_source block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    vulnerable_packages block "set" (Optional) {

      architecture block "list" (Optional) {
        comparison = string (Required)
        value = string (Required)
      }

      epoch block "list" (Optional) {
        lower_inclusive = number (Required)
        upper_inclusive = number (Required)
      }

      file_path block "list" (Optional) {
        comparison = string (Required)
        value = string (Required)
      }

      name block "list" (Optional) {
        comparison = string (Required)
        value = string (Required)
      }

      release block "list" (Optional) {
        comparison = string (Required)
        value = string (Required)
      }

      source_lambda_layer_arn block "list" (Optional) {
        comparison = string (Required)
        value = string (Required)
      }

      source_layer_hash block "list" (Optional) {
        comparison = string (Required)
        value = string (Required)
      }

      version block "list" (Optional) {
        comparison = string (Required)
        value = string (Required)
      }
    }
  }
}
