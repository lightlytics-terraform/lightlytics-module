variable "flowlogs-lambda" {
  type = map(string)
  default = {
    "stage-collection_lambda_layer" = "e1ac4ae88f17da52c54d0e3d90607a5b"
    "stage-collection_lambda_flowlogs" = "50d1189c896f480d8d71b4c9f06f6da2"
    "prod-collection_lambda_layer" = "f4ffe02037fa69c93287a7670fa282c8"
    "prod-collection_lambda_flowlogs" = "bd9a1ba50113f84eeb817959a1d82e84"
  }
}