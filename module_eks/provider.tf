terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.28.0"
    }
  }
}

provider "aws" {
  # Configuration options
 # profile = "default"
  region  = "us-east-1"

  # Force Terraform/AWS SDK to read the same files as the AWS CLI
 # shared_config_files      = ["~/.aws/config"]
 # shared_credentials_files = ["~/.aws/credentials"]
}