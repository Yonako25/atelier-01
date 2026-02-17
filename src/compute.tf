# AMI Amazon Linux 2023 (HVM, EBS) - on évite de figer un ID par région
data "aws_ami" "al2023" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-*-x86_64"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }
}

module "instance_a" {
  source = "./modules/instance"

  ami_id            = data.aws_ami.al2023.id
  instance_name     = var.instance_a_name
  instance_type     = var.instance_type
  subnet_id         = module.network.subnet_a_id
  availability_zone = local.az_a

  security_group_id  = module.network.instance_sg_id
  ebs_volume_size_gb = var.ebs_volume_size_gb
  ebs_volume_type    = var.ebs_volume_type
  common_tags        = local.common_tags
}

module "instance_b" {
  source = "./modules/instance"

  ami_id            = data.aws_ami.al2023.id
  instance_name     = var.instance_b_name
  instance_type     = var.instance_type
  subnet_id         = module.network.subnet_b_id
  availability_zone = local.az_b

  security_group_id  = module.network.instance_sg_id
  ebs_volume_size_gb = var.ebs_volume_size_gb
  ebs_volume_type    = var.ebs_volume_type
  common_tags        = local.common_tags
}

