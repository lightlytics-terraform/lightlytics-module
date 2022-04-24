###############------------Global-----------#############

variable "environment" {}
variable "lightlytics_collection_token" {
  sensitive = true
}
variable "lightlytics_flowlogs_role" {}
variable "vpc_flowlogs_ids" {
  type = list(string)
}
data "aws_region" "current" {}

###############------------Environment-----------#############

variable "domain_name" {
  default = "lightlytics.com"
}
variable "lightlytics_bucket" {
  default = "prod-lightlytics-artifacts"
}
variable "type_env" {
  default = "prod"
}

###########------------Flow logs-----------#################

variable "lambda_flow_logs_memory_size" {
  default = 128
}
variable "lambda_flow_logs_timeout" {
  default = 900
}
variable "lambda_flow_logs_batch_size" {
  default = 4000
}
variable "lambda_flow_logs_max_event_age" {
  default = 21600
}
variable "lambda_flow_logs_max_retry" {
  default = 2
}
#variable "lambda_flow_logs_architectures" {                         # requires aws provider 3.61
#  default = ["x86_64"]
#}
variable "flow_logs_bucket_lifecycle_rule" {
  type = list(object({
    id = string
    prefix = string
    status = string
    days = number
  }))
  default = [
    {
      id = "purge"
      prefix = "AWSLogs/"
      status = "Enabled"
      days = 1
    }
  ]
}

###############------------Optional-----------#############

variable "flowlogs_bucket_name" {
  default = ""
}
variable "create_new_flowlogs_bucket" {
  default = false
}
variable "s3_force_destroy" {
  type = bool
  default = true
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
