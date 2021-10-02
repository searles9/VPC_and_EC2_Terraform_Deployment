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
      name = "vpc-and-ec2"
    }
  }
}

provider "aws" {
  region = var.aws_region
}