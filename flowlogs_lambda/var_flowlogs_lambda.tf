variable "flowlogs-lambda" {
  type = map(string)
  default = {
    "stage-collection_lambda_layer" = "e1ac4ae88f17da52c54d0e3d90607a5b"
    "stage-collection_lambda_flowlogs" = "50d1189c896f480d8d71b4c9f06f6da2"
    "prod-collection_lambda_layer" = "f33c6dcecaa8f0bfa80ebda85cb21fb1"
    "prod-collection_lambda_flowlogs" = "42f36ccb52027140918f0b5a15700c3d"
  }
}