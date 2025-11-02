#!/bin/bash
terraform init
terraform providers schema -json > schema.json  
bash split_schema_json.sh
bash split_schema_tf.sh
bash split_schema_yaml.sh
