###############------------Global-----------#############

variable "environment" {}
variable "cloud_account_id" {}
variable "lightlytics_cloudwatch_role" {}
variable "lightlytics_collection_token" {
  sensitive = true
}
data "aws_region" "current" {}

###############------------Environment-----------#############

variable "domain_name" {
  default = "streamsec.io"
}
variable "lightlytics_bucket" {
  default = "prod-lightlytics-artifacts"
}
variable "type_env" {
  default = "prod"
}
variable "collection_stack_version" {
  default = 1
}

##############-------Cloud Watch---------###########

variable "lambda_cloud_watch_memory_size" {
  default = 128
}
variable "lambda_cloud_watch_timeout" {
  default = 900
}
variable "lambda_cloud_watch_max_event_age" {
  default = 21600
}
variable "lambda_cloud_watch_max_retry" {
  default = 2
}
#variable "lambda_cloud_watch_architectures" {                # requires aws provider 3.61
#  default = ["x86_64"]
#}

###############------------Private link-----------#############

variable "create_pvl_endpoint" {
  default = false
}
variable "create_s3_endpoint" {
  default = false
}
variable "create_pvl_vpc" {
  default = false
}
variable "pvl_vpc_id" {
  default = ""
}
variable "lightlytics_endpoint_service_name" {
  default = ""
}
variable "pvl_subnets_ids" {
  type = list(string)
  default = []
}
variable "pvl_security_group_ids" {
  type = list(string)
  default = []
}
variable "private_dns_enabled" {
  default = false
}
