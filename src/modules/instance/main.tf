resource "aws_instance" "this" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = [var.security_group_id]
  associate_public_ip_address = true

  tags = merge(var.common_tags, {
    Name = var.instance_name
    AZ   = var.availability_zone
  })
}

# Deux disques EBS de données
resource "aws_ebs_volume" "data_1" {
  availability_zone = var.availability_zone
  size              = var.ebs_volume_size_gb
  type              = var.ebs_volume_type

  tags = merge(var.common_tags, {
    Name     = "${var.instance_name}-data-1"
    Instance = var.instance_name
  })
}

resource "aws_ebs_volume" "data_2" {
  availability_zone = var.availability_zone
  size              = var.ebs_volume_size_gb
  type              = var.ebs_volume_type

  tags = merge(var.common_tags, {
    Name     = "${var.instance_name}-data-2"
    Instance = var.instance_name
  })
}

resource "aws_volume_attachment" "attach_1" {
  device_name = "/dev/sdf"
  volume_id   = aws_ebs_volume.data_1.id
  instance_id = aws_instance.this.id
}

resource "aws_volume_attachment" "attach_2" {
  device_name = "/dev/sdg"
  volume_id   = aws_ebs_volume.data_2.id
  instance_id = aws_instance.this.id
}

