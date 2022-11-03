locals {
  lightlytics_api_url_collection = length(var.pvl_subnets_ids) == 0 ? "https://${var.environment}.${var.domain_name}" : "https://${var.environment}-${data.aws_region.current.name}-pvl.${var.domain_name}"
}

locals {
  lambda_source_code_bucket = "${var.lightlytics_bucket}-${data.aws_region.current.name}"
}

locals {
  lambda_iam_activity_s3_source_code_key = var.iam-activity-lambda["${var.type_env}-collection_lambda_iam_activity"]
}

locals {
  lambda_layer_source_code_key = var.iam-activity-lambda["${var.type_env}-collection_lambda_layer"]
}

locals {
  pvl_subnets = var.create_pvl_vpc == true ? [aws_subnet.lightlytics-subnet-pvl1[0].id, aws_subnet.lightlytics-subnet-pvl2[0].id] : var.pvl_subnets_ids
}

locals {
  pvl_vpc = var.create_pvl_vpc == true ? aws_vpc.lightlytics-vpc-pvl[0].id : var.pvl_vpc_id
}

locals {
  pvl_security_groups = var.create_pvl_vpc == true ? [aws_security_group.allow_443_outbound[0].id] : var.pvl_security_group_ids
}