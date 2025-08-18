terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.67"   # last stable v4 release
    }
  }
}

provider "aws" {
  region = "us-east-2"
}
