terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"   # latest stable that supports your EKS module
    }
  }

  required_version = ">= 1.3"
}

provider "aws" {
  region = "us-east-2"
}
