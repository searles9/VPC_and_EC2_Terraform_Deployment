# --- platform/instances.tf ---
# LAYER 2
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.26.0"
    }
  }
  required_version = ">= 0.14"

  backend "remote" {
    organization = "dps-terraform"

    workspaces {
      name = "vpc-and-ec2-platform"
    }
  }
}

provider "aws" {
  region = var.region
}
# read the outputs from the VPC workspace
data "terraform_remote_state" "vpc" {
  backend = "remote"

  config = {
    organization = "dps-terraform"
    workspaces = {
      name = "vpc-and-ec2-vpc"
    }
  }
}
# ------------------------------