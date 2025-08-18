terraform {
  backend "s3" {
    bucket = "mytodoappbucket1708"
    key    = "jenkins/terraform.tfstate"
    region = "us-east-2"
  }
}