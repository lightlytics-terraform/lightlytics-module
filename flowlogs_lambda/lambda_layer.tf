resource "aws_lambda_layer_version" "lightlytics-lambda-layer" {
  s3_bucket   = local.lambda_source_code_bucket
  s3_key = local.lambda_layer_source_code_key
  layer_name = "${var.environment}-collection-dependencies"
  compatible_runtimes = ["nodejs20.x"]
}
