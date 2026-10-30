provider "aws" {
  region     = "us-west-2"
}
resource "aws_instance" "example" {
    ami = data.aws_ami.ubuntu.id
    instance_type = var.instance_type
    tags = {
        Name = var.instance_name
    }
}

# Data Source: Dynamically fetch the latest Ubuntu AMI
data "aws_ami" "ubuntu" {
  most_recent = true
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }
  owners = ["099720109477"] # Canonical
}

