resource "aws_securityhub_insight" "name" {
  group_by_attribute = string (Required)
  name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  filters block "list" (Required) {

    aws_account_id block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    company_name block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    compliance_status block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    confidence block "set" (Optional) {
      eq = string (Optional)
      gte = string (Optional)
      lte = string (Optional)
    }

    created_at block "set" (Optional) {
      end = string (Optional)
      start = string (Optional)

      date_range block "list" (Optional) {
        unit = string (Required)
        value = number (Required)
      }
    }

    criticality block "set" (Optional) {
      eq = string (Optional)
      gte = string (Optional)
      lte = string (Optional)
    }

    description block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    finding_provider_fields_confidence block "set" (Optional) {
      eq = string (Optional)
      gte = string (Optional)
      lte = string (Optional)
    }

    finding_provider_fields_criticality block "set" (Optional) {
      eq = string (Optional)
      gte = string (Optional)
      lte = string (Optional)
    }

    finding_provider_fields_related_findings_id block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    finding_provider_fields_related_findings_product_arn block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    finding_provider_fields_severity_label block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    finding_provider_fields_severity_original block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    finding_provider_fields_types block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    first_observed_at block "set" (Optional) {
      end = string (Optional)
      start = string (Optional)

      date_range block "list" (Optional) {
        unit = string (Required)
        value = number (Required)
      }
    }

    generator_id block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    id block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    keyword block "set" (Optional) {
      value = string (Required)
    }

    last_observed_at block "set" (Optional) {
      end = string (Optional)
      start = string (Optional)

      date_range block "list" (Optional) {
        unit = string (Required)
        value = number (Required)
      }
    }

    malware_name block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    malware_path block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    malware_state block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    malware_type block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    network_destination_domain block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    network_destination_ipv4 block "set" (Optional) {
      cidr = string (Required)
    }

    network_destination_ipv6 block "set" (Optional) {
      cidr = string (Required)
    }

    network_destination_port block "set" (Optional) {
      eq = string (Optional)
      gte = string (Optional)
      lte = string (Optional)
    }

    network_direction block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    network_protocol block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    network_source_domain block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    network_source_ipv4 block "set" (Optional) {
      cidr = string (Required)
    }

    network_source_ipv6 block "set" (Optional) {
      cidr = string (Required)
    }

    network_source_mac block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    network_source_port block "set" (Optional) {
      eq = string (Optional)
      gte = string (Optional)
      lte = string (Optional)
    }

    note_text block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    note_updated_at block "set" (Optional) {
      end = string (Optional)
      start = string (Optional)

      date_range block "list" (Optional) {
        unit = string (Required)
        value = number (Required)
      }
    }

    note_updated_by block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    process_launched_at block "set" (Optional) {
      end = string (Optional)
      start = string (Optional)

      date_range block "list" (Optional) {
        unit = string (Required)
        value = number (Required)
      }
    }

    process_name block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    process_parent_pid block "set" (Optional) {
      eq = string (Optional)
      gte = string (Optional)
      lte = string (Optional)
    }

    process_path block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    process_pid block "set" (Optional) {
      eq = string (Optional)
      gte = string (Optional)
      lte = string (Optional)
    }

    process_terminated_at block "set" (Optional) {
      end = string (Optional)
      start = string (Optional)

      date_range block "list" (Optional) {
        unit = string (Required)
        value = number (Required)
      }
    }

    product_arn block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    product_fields block "set" (Optional) {
      comparison = string (Required)
      key = string (Required)
      value = string (Required)
    }

    product_name block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    recommendation_text block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    record_state block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    related_findings_id block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    related_findings_product_arn block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    resource_aws_ec2_instance_iam_instance_profile_arn block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    resource_aws_ec2_instance_image_id block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    resource_aws_ec2_instance_ipv4_addresses block "set" (Optional) {
      cidr = string (Required)
    }

    resource_aws_ec2_instance_ipv6_addresses block "set" (Optional) {
      cidr = string (Required)
    }

    resource_aws_ec2_instance_key_name block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    resource_aws_ec2_instance_launched_at block "set" (Optional) {
      end = string (Optional)
      start = string (Optional)

      date_range block "list" (Optional) {
        unit = string (Required)
        value = number (Required)
      }
    }

    resource_aws_ec2_instance_subnet_id block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    resource_aws_ec2_instance_type block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    resource_aws_ec2_instance_vpc_id block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    resource_aws_iam_access_key_created_at block "set" (Optional) {
      end = string (Optional)
      start = string (Optional)

      date_range block "list" (Optional) {
        unit = string (Required)
        value = number (Required)
      }
    }

    resource_aws_iam_access_key_status block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    resource_aws_iam_access_key_user_name block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    resource_aws_s3_bucket_owner_id block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    resource_aws_s3_bucket_owner_name block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    resource_container_image_id block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    resource_container_image_name block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    resource_container_launched_at block "set" (Optional) {
      end = string (Optional)
      start = string (Optional)

      date_range block "list" (Optional) {
        unit = string (Required)
        value = number (Required)
      }
    }

    resource_container_name block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    resource_details_other block "set" (Optional) {
      comparison = string (Required)
      key = string (Required)
      value = string (Required)
    }

    resource_id block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    resource_partition block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    resource_region block "set" (Optional) {
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

    severity_label block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    source_url block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    threat_intel_indicator_category block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    threat_intel_indicator_last_observed_at block "set" (Optional) {
      end = string (Optional)
      start = string (Optional)

      date_range block "list" (Optional) {
        unit = string (Required)
        value = number (Required)
      }
    }

    threat_intel_indicator_source block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    threat_intel_indicator_source_url block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    threat_intel_indicator_type block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    threat_intel_indicator_value block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    title block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    type block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    updated_at block "set" (Optional) {
      end = string (Optional)
      start = string (Optional)

      date_range block "list" (Optional) {
        unit = string (Required)
        value = number (Required)
      }
    }

    user_defined_values block "set" (Optional) {
      comparison = string (Required)
      key = string (Required)
      value = string (Required)
    }

    verification_state block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    workflow_status block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }
  }
}
