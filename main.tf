provider "aws" { 
    AWS_ACCESS_KEY_ID     = var.AWS_ACCESS_KEY_ID
    AWS_SECRET_ACCESS_KEY = var.AWS_SECRET_ACCESS_KEY_ID
    }


resource "aws_instance" "web" {
    ami = data.aws_ami.ubuntu.id
    instance_type = var.instance_type
    key_name = var.key_name
    tags = {
        Name = var.instance_name
    }
}

# 2. Data Source: Dynamically fetch the latest Ubuntu AMI
data "aws_ami" "ubuntu" {
  most_recent = true
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }
  owners = ["099720109477"] # Canonical
}

