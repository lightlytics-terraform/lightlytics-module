variable "collection-lambda" {
  type = map(string)
  default = {
    "stage-collection_lambda_layer" = "e1ac4ae88f17da52c54d0e3d90607a5b"
    "stage-collection_lambda_cloudwatch" = "50d1189c896f480d8d71b4c9f06f6da2"
    "prod-collection_lambda_layer" = "a581160799adfc5fd663ff7a6259ddd0"
    "prod-collection_lambda_cloudwatch" = "bd9a1ba50113f84eeb817959a1d82e84"
  }
}