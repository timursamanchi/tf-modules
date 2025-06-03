variable "aws-region" {
    description = "default aws region"
    type = string
    default = "eu-west-1"
}
variable "bucket-name" {
    description = "aws s3 bucket name"
    type = string
    default = "s3-test-bucket"
}
variable "bucket-acl" {
    description = "the canned acl applies to the bucket"
    type = string
    default = "private"
}
