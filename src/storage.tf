module "s3_docs" {
  source = "./modules/s3_docs"

  name_prefix = local.name_prefix
  common_tags = local.common_tags
}

