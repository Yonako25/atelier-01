output "instance_id" {
  description = "ID de l'instance EC2."
  value       = aws_instance.this.id
}

output "public_ip" {
  description = "Adresse IP publique de l'instance."
  value       = aws_instance.this.public_ip
}

output "volume_ids" {
  description = "IDs des volumes EBS additionnels."
  value = [
    aws_ebs_volume.data_1.id,
    aws_ebs_volume.data_2.id,
  ]
}

