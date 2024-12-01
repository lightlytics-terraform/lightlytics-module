variable "flowlogs-lambda" {
  type = map(string)
  default = {
    "stage-collection_lambda_layer" = "e1ac4ae88f17da52c54d0e3d90607a5b"
    "stage-collection_lambda_flowlogs" = "50d1189c896f480d8d71b4c9f06f6da2"
    "prod-collection_lambda_layer" = "7f41f3c46cd9b7610a82bc67d83c5dcc"
    "prod-collection_lambda_flowlogs" = "7dcbce869f880dbd9e832b3e326be0b3"
  }
}