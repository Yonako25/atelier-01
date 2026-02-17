variable "ami_id" {
  description = "ID de l'AMI à utiliser pour l'instance."
  type        = string
}

variable "instance_name" {
  description = "Nom de l'instance."
  type        = string
}

variable "instance_type" {
  description = "Type d'instance EC2."
  type        = string
}

variable "subnet_id" {
  description = "ID du subnet dans lequel créer l'instance."
  type        = string
}

variable "availability_zone" {
  description = "Zone de disponibilité de l'instance et des volumes."
  type        = string
}

variable "security_group_id" {
  description = "ID du Security Group à attacher à l'instance."
  type        = string
}

variable "ebs_volume_size_gb" {
  description = "Taille des disques EBS additionnels (en Go)."
  type        = number
}

variable "ebs_volume_type" {
  description = "Type des volumes EBS."
  type        = string
}

variable "common_tags" {
  description = "Tags communs à appliquer sur toutes les ressources de l'instance."
  type        = map(string)
}

