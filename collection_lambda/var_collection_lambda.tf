variable "collection-lambda" {
  type = map(string)
  default = {
    "stage-collection_lambda_layer" = "e1ac4ae88f17da52c54d0e3d90607a5b"
    "stage-collection_lambda_cloudwatch" = "50d1189c896f480d8d71b4c9f06f6da2"
    "prod-collection_lambda_layer" = "0eee49d3582e038590f4d4096d72c6f9"
    "prod-collection_lambda_cloudwatch" = "74fe114d709c2efece809dfbd6a7577e"
  }
}