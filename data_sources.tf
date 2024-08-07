

#Retrieve the list of AZs in the current AWS region

data "aws_availability_zones" "available" {}
data "aws_region" "current" {}

#retrieve a free tier rhel server by using data filters. 

data "aws_ami" "ubuntu_free_tier" {
  most_recent = true
  owners      = ["099720109477"] #Redhat aws account ID

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-*-20.04-amd64-server-*"] #ubuntu flavor to further the scope of the query
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

data "aws_s3_bucket" "runsabba-bucket"{
  bucket = "runsabba-cloud-bkt"
}