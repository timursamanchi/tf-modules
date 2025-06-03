module "create-secure-s3-bucket" {
  source       = "../"
  bucket_name  = local.s3_config.bucket_name
  name         = local.s3_config.name
  environment  = local.s3_config.environment
  owner        = local.s3_config.owner
  block_access = local.s3_config.block_access
  versioning   = local.s3_config.versioning
}
