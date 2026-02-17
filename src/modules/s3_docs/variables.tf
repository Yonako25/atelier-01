variable "name_prefix" {
  description = "Préfixe de nommage pour le bucket de documentation."
  type        = string
}

variable "common_tags" {
  description = "Tags communs à appliquer sur les ressources S3."
  type        = map(string)
}

