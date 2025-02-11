variable "flowlogs-lambda" {
  type = map(string)
  default = {
    "stage-collection_lambda_layer" = "e1ac4ae88f17da52c54d0e3d90607a5b"
    "stage-collection_lambda_flowlogs" = "50d1189c896f480d8d71b4c9f06f6da2"
    "prod-collection_lambda_layer" = "a581160799adfc5fd663ff7a6259ddd0"
    "prod-collection_lambda_flowlogs" = "4fb2b5cafcd872ffbb1f714db211ce5c"
  }
}