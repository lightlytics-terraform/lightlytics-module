resource "aws_lambda_function" "lightlytics-CloudWatch-lambda" {
  function_name = "${var.environment}-lightlytics-function-CloudWatch"
  role          = var.lightlytics_cloudwatch_role
#  architectures = var.lambda_cloud_watch_architectures   # requires aws provider 3.61
  handler       = "src/handler.cloudWatchCollector"
  runtime       = "nodejs20.x"
  memory_size   = var.lambda_cloud_watch_memory_size
  timeout       = var.lambda_cloud_watch_timeout
  s3_bucket     = local.lambda_source_code_bucket
  s3_key        = local.lambda_cloud_watch_s3_source_code_key
  layers        = [aws_lambda_layer_version.lightlytics-lambda-layer.arn]
  vpc_config {
    subnet_ids         = local.pvl_subnets
    security_group_ids = local.pvl_security_groups
  }
  environment {
    variables = {
      SECRET_NAME = local.collection_token_secret_name      
      API_URL  = local.lightlytics_api_url_collection
      ENV      = var.type_env
      NODE_ENV = var.type_env
    }
  }
}

resource "aws_lambda_function_event_invoke_config" "lightlytics-options-cloud-watch" {
  function_name                = aws_lambda_function.lightlytics-CloudWatch-lambda.function_name
  maximum_event_age_in_seconds = var.lambda_cloud_watch_max_event_age
  maximum_retry_attempts       = var.lambda_cloud_watch_max_retry
}

resource "aws_lambda_permission" "lightlytics-cloud-watch-allow-lambda" {
  for_each = local.Cloud_Watch_Rules
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.lightlytics-CloudWatch-lambda.function_name
  principal     = "events.amazonaws.com"
  source_arn    = aws_cloudwatch_event_rule.lightlytics-CloudWatch-rule[each.key].arn
}
