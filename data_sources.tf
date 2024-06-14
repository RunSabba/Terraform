

#Retrieve the list of AZs in the current AWS region

data "aws_availability_zones" "available" {}
data "aws_region" "current" {}

#retrieve a free tier rhel server by using data filters. 

data "aws_ami" "redhat_free_tier" {
  most_recent = true
  owners      = ["309956199498"] #Redhat aws account ID

  filter {
    name   = "name"
    values = ["RHEL-9.*_HVM-*"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}
