#!/bin/bash
terraform init
terraform providers schema -json > schema.json

# Find and execute all split scripts
for script in split-*.sh; do
  if [ -f "$script" ]; then
    echo "Running $script..."
    bash "$script"
  fi
done
