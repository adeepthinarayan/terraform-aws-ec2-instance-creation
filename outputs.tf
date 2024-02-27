output "instance_ip_address" {
  value       = aws_instance.thinknyxserver.public_ip
  description = "The public IP address of the server instance."
}
