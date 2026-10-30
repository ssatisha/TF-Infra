output "instance_id" {
    value = aws_instance.example.id
}
output "public_ip" {
    description = "The Public IP of the instance"
    value = aws_instance.example.public_ip
}
