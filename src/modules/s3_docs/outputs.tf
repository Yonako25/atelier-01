output "bucket_name" {
  description = "Nom du bucket S3 pour la documentation."
  value       = aws_s3_bucket.docs.bucket
}

output "bucket_arn" {
  description = "ARN du bucket S3 pour la documentation."
  value       = aws_s3_bucket.docs.arn
}

