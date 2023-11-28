###############------------Global-----------#############

variable "environment" {}
variable "cloud_account_id" {}
variable "Lightlytics_internal_accountID" {
  sensitive = true
}
variable "lightlytics_account_externalID" {
  sensitive = true
}
variable "lightlytics_auth_token" {
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
variable "lightlytics_account" {
  default = "624907860825"
}
variable "init_stack_version" {
  default = 1
}

###############----------Init-------------#############

variable "lambda_init_memory_size" {
  default = 128
}
variable "lambda_init_timeout" {
  default = 900
}
variable "lambda_init_max_event_age" {
  default = 21600
}
variable "lambda_init_max_retry" {
  default = 2
}
#variable "lambda_init_architectures" {                                 # requires aws provider 3.61
#  default = ["x86_64"]
#}

###############------------Optional-----------#############

variable "enable_flowlogs" {
  default = true
  type = bool
}
variable "enable_cloudtrail" {
  default = true
  type = bool
}
variable "s3_force_destroy" {
  type = bool
  default = true
}
variable "create_cloud_trail" {
  type = bool
  default = false
}
variable "enable_iam_activity" {
  default = true
  type = bool
}

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
