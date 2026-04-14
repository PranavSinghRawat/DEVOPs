# Simple Terraform configuration to demonstrate IaC
# This uses the 'local' provider to manage a local file, simulating infrastructure.

terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.1"
    }
  }
}

resource "local_file" "server_config" {
  filename = "${path.module}/server_setup.txt"
  content  = "Server Name: DevOps-Assignment-2\nEnvironment: Production\nStatus: Initialized by Terraform"
}

# Output the path of the created file
output "config_file_path" {
  value = local_file.server_config.filename
}
