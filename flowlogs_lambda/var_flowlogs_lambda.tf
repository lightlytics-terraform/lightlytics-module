variable "flowlogs-lambda" {
  type = map(string)
  default = {
    "stage-collection_lambda_layer" = "e1ac4ae88f17da52c54d0e3d90607a5b"
    "stage-collection_lambda_flowlogs" = "50d1189c896f480d8d71b4c9f06f6da2"
    "prod-collection_lambda_layer" = "6dbca45610bf4933b39a954f46c056db"
    "prod-collection_lambda_flowlogs" = "8c421c07f2bf89f05c00221fc34efd0c"
  }
}