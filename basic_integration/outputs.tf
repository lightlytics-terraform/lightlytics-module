output "lightlytics_api_url" {
  value = local.lightlytics_api_url
}

output "lightlytics_cloudwatch_role" {
  value = aws_iam_role.lightlytics-CloudWatch-role[0].arn
}

output "lightlytics_flowlogs_role" {
  value = aws_iam_role.lightlytics-FlowLogs-lambda-role[0].arn
}

output "pvl_vpc" {
  value = local.pvl_vpc
}

output "pvl_subnets" {
  value = local.pvl_subnets
}

output "pvl_security_groups" {
  value = local.pvl_security_groups
}
