terraform {
    required_providers {
      aws = {
        version = "5.99.1"
        source = "hashicorp/aws"
      }
    }
}
provider "aws" {
    region = var.aws-region 
}