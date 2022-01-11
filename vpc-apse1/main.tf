# Setup terraform cloud and workspace
terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "your-organization"

    workspaces {
      name = "your-vpc-workspace"
    }
  }
}

# Setup terraform providers
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.71.0"
    }
  }

  required_version = ">= 1.1.3"
}

# Setup AWS provider
provider "aws" {
  region = var.aws_region
}
