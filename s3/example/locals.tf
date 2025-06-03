locals {
  s3_config_raw = jsondecode(file("${path.module}/s3_config.json"))
  s3_config     = local.s3_config_raw.s3
}
