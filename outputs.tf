output "instance_id" {
    value = aws_instance.ec2-webserver.id
}
output "public_ip" {
    description = "The Public IP of the instance"
    value = aws_instance.ec2-webserver.public_ip
}
