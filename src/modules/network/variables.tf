variable "project_name" {
  description = "Nom logique du projet."
  type        = string
}

variable "vpc_name" {
  description = "Nom du VPC."
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR du VPC."
  type        = string
}

variable "subnet_a_cidr" {
  description = "CIDR du subnet en AZ #1."
  type        = string
}

variable "subnet_b_cidr" {
  description = "CIDR du subnet en AZ #2."
  type        = string
}

variable "allowed_ssh_cidr" {
  description = "CIDR autorisé à se connecter en SSH ."
  type        = string
}

variable "az_a" {
  description = "AZ utilisée pour le subnet A."
  type        = string
}

variable "az_b" {
  description = "AZ utilisée pour le subnet B."
  type        = string
}

variable "name_prefix" {
  description = "Préfixe de nommage pour les ressources réseau."
  type        = string
}

variable "common_tags" {
  description = "Tags communs à appliquer sur toutes les ressources réseau."
  type        = map(string)
}

