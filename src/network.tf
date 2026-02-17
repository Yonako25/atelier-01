module "network" {
  source = "./modules/network"

  project_name     = var.project_name
  vpc_name         = var.vpc_name
  vpc_cidr         = var.vpc_cidr
  subnet_a_cidr    = var.subnet_a_cidr
  subnet_b_cidr    = var.subnet_b_cidr
  allowed_ssh_cidr = var.allowed_ssh_cidr

  az_a        = local.az_a
  az_b        = local.az_b
  name_prefix = local.name_prefix
  common_tags = local.common_tags
}

