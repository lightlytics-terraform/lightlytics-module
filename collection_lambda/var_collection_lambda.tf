variable "collection-lambda" {
  type = map(string)
  default = {
    "stage-collection_lambda_layer" = "e1ac4ae88f17da52c54d0e3d90607a5b"
    "stage-collection_lambda_cloudwatch" = "50d1189c896f480d8d71b4c9f06f6da2"
    "prod-collection_lambda_layer" = "f5d7f0bec8bce96c57cf3fa7b00f7a1e"
    "prod-collection_lambda_cloudwatch" = "42f36ccb52027140918f0b5a15700c3d"
  }
}