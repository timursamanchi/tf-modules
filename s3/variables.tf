variable "aws_region" {
    description = "default aws region"
    type = string
    default = "eu-west-1"
}
variable "versioning" {
  type        = string
  description = "Enable versioning: yes/no"
  default     = "no"
}
variable "block_access" {
  description = "Whether to block public access (yes/no)"
  type        = string
  default     = "yes"
}
variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
}
variable "name" {
  description = "Tag: name"
  type        = string
}
variable "environment" {
  description = "Tag: environment"
  type        = string
}
variable "owner" {
  description = "Tag: owner"
  type        = string
}