data "aws_s3_bucket" "flowlogs_bucket" {
  bucket = var.create_new_flowlogs_bucket == true ? aws_s3_bucket.lightlytics-flow-logs-bucket.id : var.flowlogs_bucket_name
}

resource "aws_s3_bucket" "lightlytics-flow-logs-bucket" {
  count = var.create_new_flowlogs_bucket == true ? 1 : 0
  bucket = "${var.environment}-lightlytics-flow-logs-bucket-${data.aws_region.current.name}"
  force_destroy = var.s3_force_destroy
}

resource "aws_flow_log" "lightlytics-flow-logs" {
  for_each = toset(var.vpc_flowlogs_ids)
  log_destination      = data.aws_s3_bucket.flowlogs_bucket.arn
  log_destination_type = "s3"
  traffic_type         = "ALL"
  vpc_id               = each.value
  log_format           = "$${version} $${account-id} $${action} $${bytes} $${dstaddr} $${end} $${instance-id} $${interface-id} $${log-status} $${packets} $${pkt-dstaddr} $${pkt-srcaddr} $${protocol} $${region} $${srcaddr} $${srcport} $${dstport} $${start} $${vpc-id} $${subnet-id} $${tcp-flags}"
}

resource "aws_s3_bucket_notification" "lightlytics-lambda-s3-trigger" {
  bucket = data.aws_s3_bucket.flowlogs_bucket.id
  lambda_function {
    lambda_function_arn = aws_lambda_function.lightlytics-FlowLogs-lambda.arn
    events              = ["s3:ObjectCreated:*"]
  }
  depends_on = [aws_lambda_permission.lightlytics-flow-logs-allow-lambda-s3]
}

resource "aws_s3_bucket_acl" "example_bucket_acl" {
  depends_on = [aws_s3_bucket.lightlytics-flow-logs-bucket]
  bucket = data.aws_s3_bucket.flowlogs_bucket.id
  acl    = "private"
}

resource "aws_s3_bucket_lifecycle_configuration" "bucket-config" {
  depends_on = [aws_s3_bucket.lightlytics-flow-logs-bucket]
  bucket = data.aws_s3_bucket.flowlogs_bucket.id
  rule {
    id = var.flow_logs_bucket_lifecycle_rule[0].id
    expiration {
      days = var.flow_logs_bucket_lifecycle_rule[0].days
    }
    filter {
      prefix = var.flow_logs_bucket_lifecycle_rule[0].prefix
    }
    status = var.flow_logs_bucket_lifecycle_rule[0].status
  }
}
