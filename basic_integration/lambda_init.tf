resource "aws_lambda_function" "lightlytics-init-lambda" {
  function_name = "${var.environment}-lightlytics-function-Init"
  role          = aws_iam_role.lightlytics-init-role.arn
  #  architectures = var.lambda_init_architectures   # requires aws provider 3.61
  handler       = "app.lambda_handler"
  runtime       = "python3.8"
  memory_size   = var.lambda_init_memory_size
  timeout       = var.lambda_init_timeout
  s3_bucket     = local.lambda_source_code_bucket
  s3_key        = local.lambda_init_s3_source_code_key
  vpc_config {
    subnet_ids         = local.pvl_subnets
    security_group_ids = local.pvl_security_groups
  }
  environment {
    variables = {
      API_URL  = local.lightlytics_api_url
      ENV      = var.type_env
      NODE_ENV = var.type_env
    }
  }
}

resource "aws_lambda_function_event_invoke_config" "lightlytics-options-init" {
  function_name                = aws_lambda_function.lightlytics-init-lambda.function_name
  maximum_event_age_in_seconds = var.lambda_init_max_event_age
  maximum_retry_attempts       = var.lambda_init_max_retry
}
