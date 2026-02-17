output "vpc_id" {
  description = "ID du VPC principal."
  value       = aws_vpc.main.id
}

output "subnet_a_id" {
  description = "ID du subnet A."
  value       = aws_subnet.subnet_a.id
}

output "subnet_b_id" {
  description = "ID du subnet B."
  value       = aws_subnet.subnet_b.id
}

output "instance_sg_id" {
  description = "ID du Security Group pour les instances."
  value       = aws_security_group.instance_sg.id
}

