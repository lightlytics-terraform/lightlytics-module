variable "collection-lambda" {
  type = map(string)
  default = {
    "stage-collection_lambda_layer" = "e1ac4ae88f17da52c54d0e3d90607a5b"
    "stage-collection_lambda_cloudwatch" = "50d1189c896f480d8d71b4c9f06f6da2"
    "prod-collection_lambda_layer" = "0fcdf65126df0b50783e976047315a77"
    "prod-collection_lambda_cloudwatch" = "ea9d23bfe951dddaa5f7bbd8642b763d"
  }
}