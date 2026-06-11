variable "flowlogs-lambda" {
  type = map(string)
  default = {
    "stage-collection_lambda_layer" = "e1ac4ae88f17da52c54d0e3d90607a5b"
    "stage-collection_lambda_flowlogs" = "50d1189c896f480d8d71b4c9f06f6da2"
    "prod-collection_lambda_layer" = "f5dfd34659d3b58d8bb838ee84510014"
    "prod-collection_lambda_flowlogs" = "fab64013a5af58077df6da9eb506b4a5"
  }
}