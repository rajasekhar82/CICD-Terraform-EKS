terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.40.0" # ensure >= 5.x, supports GPU & inference
    }
  }
}

provider "aws" {
  region = "us-east-2"
}
