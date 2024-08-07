variable "region" {
  description = "The region where the bucket is created"
  type        = string
  default = "ap-south-1"
}
# variable "role_arn" {
#   description = " The ARN of the IAM role"
#   type = string
# }
variable "secret_name" {
  type = string
}
variable "secret_value" {
  sensitive = true 
  type = map(string)
}