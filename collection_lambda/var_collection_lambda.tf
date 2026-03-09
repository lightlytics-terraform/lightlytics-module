variable "collection-lambda" {
  type = map(string)
  default = {
    "stage-collection_lambda_layer" = "e1ac4ae88f17da52c54d0e3d90607a5b"
    "stage-collection_lambda_cloudwatch" = "50d1189c896f480d8d71b4c9f06f6da2"
    "prod-collection_lambda_layer" = "37d464e942b681648420fcf9c123955d"
    "prod-collection_lambda_cloudwatch" = "5e386f9a6adfc2f7e71c45d03795366d"
  }
}