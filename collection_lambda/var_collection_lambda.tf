variable "collection-lambda" {
  type = map(string)
  default = {
    "stage-collection_lambda_layer" = "e1ac4ae88f17da52c54d0e3d90607a5b"
    "stage-collection_lambda_cloudwatch" = "50d1189c896f480d8d71b4c9f06f6da2"
    "prod-collection_lambda_layer" = "98919b98292d9b3ec577cb43bd280a2a"
    "prod-collection_lambda_cloudwatch" = "4f9189e262201912b0b9b86fdf6ffebb"
  }
}