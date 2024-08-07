variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "vpc_name" {
  type    = string
  default = "demo_vpc"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "private_subnets" {
  default = {
    "private_subnet_1" = 1
    "private_subnet_2" = 2
    "private_subnet_3" = 3
  }
}

variable "public_subnets" {
  default = {
    "public_subnet_1" = 1
    "public_subnet_2" = 2
    "public_subnet_3" = 3
  }
}

variable "my-ami-redhat" {
  type        = string
  default     = "ami-04b70fa74e45c3917"
  description = "AMI of the linux distro of my choice"
}

variable "environment" {
  type        = string
  description = "Specifiying the APP's running ENV"
  default     = "dev"
}

variable "us-east-az-list" {
  type    = list(string)
  default = ["us-east-1a", "us-east-1b", "us-east-1c", "us-east-1d", "us-east-1e"]
}

variable "cidr_blocks" {
  type = map(string)
  default = {
    dev  = "10.0.150.0/24"
    prod = "10.0.250.0/24"
  }
}  