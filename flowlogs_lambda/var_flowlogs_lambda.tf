variable "flowlogs-lambda" {
  type = map(string)
  default = {
    "stage-collection_lambda_layer" = "e1ac4ae88f17da52c54d0e3d90607a5b"
    "stage-collection_lambda_flowlogs" = "50d1189c896f480d8d71b4c9f06f6da2"
    "prod-collection_lambda_layer" = "1e8d00c5c5513f60c336658713ee2cd5"
    "prod-collection_lambda_flowlogs" = "4a752d836232381fc3c72ac51458c1bc"
  }
}