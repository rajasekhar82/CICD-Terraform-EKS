# data "aws_availability_zones" "azs" {}
# Use a consistent name "available" (matches main.tf below)
data "aws_availability_zones" "available" {
  state = "available"
}
