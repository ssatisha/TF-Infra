provider "aws" {
  region     = "us-west-2"
}
resource "aws_instance" "example" {
    ami = "ami-07f3a2cfd03d8ee81"
    instance_type = var.instance_type
    tags = {
        Name = var.instance_name
    }
}

# Data Source: Dynamically fetch the latest Ubuntu AMI
#data "aws_ami" "ubuntu" {
#  most_recent = true
#  filter {
#    name   = "name"
#    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
#  }
#  owners = ["099720109477"] # Canonical
#}

