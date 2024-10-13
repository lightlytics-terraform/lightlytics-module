variable "flowlogs-lambda" {
  type = map(string)
  default = {
    "stage-collection_lambda_layer" = "e1ac4ae88f17da52c54d0e3d90607a5b"
    "stage-collection_lambda_flowlogs" = "50d1189c896f480d8d71b4c9f06f6da2"
    "prod-collection_lambda_layer" = "24ad10212c195b9a805df9b82493877b"
    "prod-collection_lambda_flowlogs" = "6c0c66c12749eb83543b83c0b2c27e69"
  }
}