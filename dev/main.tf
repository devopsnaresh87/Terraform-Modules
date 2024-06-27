#This Terraform Code Deploys Basic VPC Infra.
provider "aws" {
  region = var.aws_region
}

terraform {
  required_version = ">= 1.2.2"
  required_providers {
    aws = {
      version = "<=5.0.0"
      source  = "hashicorp/aws"
    }
  }
  backend "s3" {
    bucket = "devopsb26terraformbucket"
    key    = "devopsb26-dev-modules.tfstate"
    region = "us-east-1"

  }

}

