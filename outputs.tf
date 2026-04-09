output "public_ip" {
  description = "Public IP of EC2"
  value       = aws_instance.myec2.public_ip
}