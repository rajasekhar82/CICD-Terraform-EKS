# data "aws_ami" "example" {

#   most_recent = true
#   owners      = ["amazon"]

#   filter {
#     name   = "name"
#     values = ["ami-0d1b5a8c13042c939"]
#   }

#   filter {
#     name   = "root-device-type"
#     values = ["ebs"]
#   }

#   filter {
#     name   = "virtualization-type"
#     values = ["hvm"]
#   }
# }

data "aws_availability_zones" "azs" {}