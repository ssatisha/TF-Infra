#variable "ami_id" {
#    description = "AWS AMI ID to use for the instance"
#    type = string
#}

variable "instance_type" {
    description = "Instance Type"
    type = string
}

variable "key_name" {
    description = "EC2 Key pair name"
    type = string
}

variable "instance_name" {
    description = " Name of the Instance"
    type = string
}

