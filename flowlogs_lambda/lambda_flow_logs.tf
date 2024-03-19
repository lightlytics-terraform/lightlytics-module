resource "aws_lambda_function" "lightlytics-FlowLogs-lambda" {
  function_name = "${var.environment}-lightlytics-function-FlowLogs-lambda"
  role          = var.lightlytics_flowlogs_role
#  architectures = var.lambda_flow_logs_architectures   # requires aws provider 3.61
  handler       = "src/handler.s3Collector"
  runtime       = "nodejs18.x"
  memory_size   = var.lambda_flow_logs_memory_size
  timeout       = var.lambda_flow_logs_timeout
  s3_bucket     = local.lambda_source_code_bucket
  s3_key        = local.lambda_flow_logs_s3_source_code_key
  layers        = [aws_lambda_layer_version.lightlytics-lambda-layer.arn]
  vpc_config {
    subnet_ids         = local.pvl_subnets
    security_group_ids = local.pvl_security_groups
  }
  environment {
    variables = {
      API_URL  = local.lightlytics_api_url_collection
      SECRET_NAME = local.collection_flowlogs_token_secret_name
      BATCH_SIZE = var.lambda_flow_logs_batch_size
      ENV      = var.type_env
      NODE_ENV = var.type_env
    }
  }
}

resource "aws_lambda_function_event_invoke_config" "lightlytics-options-flow-logs" {
  function_name                = aws_lambda_function.lightlytics-FlowLogs-lambda.function_name
  maximum_event_age_in_seconds = var.lambda_flow_logs_max_event_age
  maximum_retry_attempts       = var.lambda_flow_logs_max_retry
}

resource "aws_lambda_permission" "lightlytics-flow-logs-allow-lambda-s3" {
  statement_id  = "AllowExecutionFromS3Bucket"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.lightlytics-FlowLogs-lambda.arn
  principal     = "s3.amazonaws.com"
  source_arn    = data.aws_s3_bucket.flowlogs_bucket.arn
}
