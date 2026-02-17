output "region" {
  value = var.aws_region
}

output "availability_zones_used" {
  value = {
    az_a = local.az_a
    az_b = local.az_b
  }
}

output "vpc_id" {
  value = module.network.vpc_id
}

output "instance_a_public_ip" {
  value = module.instance_a.public_ip
}

output "instance_b_public_ip" {
  value = module.instance_b.public_ip
}

output "s3_docs_bucket_name" {
  value = module.s3_docs.bucket_name
}
