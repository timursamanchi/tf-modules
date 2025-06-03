resource "aws_s3_bucket" "secure_bucket" {
    bucket = var.bucket_name

    # Terraform will delete all objects (including versions if versioning is enabled) before destroying the bucket.
    force_destroy = true

    tags = {
      name = var.name
      environment = var.environment
      owner = var.owner
    }
}
# enable verioning
resource "aws_s3_bucket_versioning" "bucket_acl" {
    count  = var.versioning == "yes" ? 1 : 0
    bucket = aws_s3_bucket.secure_bucket.id

    versioning_configuration {
      status = "Enabled"
    }
}
# enable server side encription - using S3-managed keys (SSE-S3)
resource "aws_s3_bucket_server_side_encryption_configuration" "AES256_encription" {
    bucket = aws_s3_bucket.secure_bucket.id
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
}
# block all public access
resource "aws_s3_bucket_public_access_block" "pub_access_block" {
    bucket = aws_s3_bucket.secure_bucket.id

    block_public_acls = true
    block_public_policy = true
    ignore_public_acls = true
    restrict_public_buckets = true
}


