variable "vpc_cidr" {
  description = "Vpc CIDR"
  type        = string
}

variable "public_subnets" {
  description = "public_subnets CIDR"
  type        = list(string)
}

variable "instance_type" {
  description = "Instance Type"
  type        = string
}
variable "ami_id" {
  description = "AMI ID for Jenkins EC2 instance"
  type        = string
  default     = "ami-0d1b5a8c13042c939"
}
variable "pemkey" {
  description = "PEM Key name for EC2 instance"
  type        = string
  default     = "aws-ohio"
}


