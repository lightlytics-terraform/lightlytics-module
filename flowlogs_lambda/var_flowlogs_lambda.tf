variable "flowlogs-lambda" {
  type = map(string)
  default = {
    "stage-collection_lambda_layer" = "e1ac4ae88f17da52c54d0e3d90607a5b"
    "stage-collection_lambda_flowlogs" = "50d1189c896f480d8d71b4c9f06f6da2"
    "prod-collection_lambda_layer" = "e1bc947a3914aa28965e0ed8643ea6d2"
    "prod-collection_lambda_flowlogs" = "ea9d23bfe951dddaa5f7bbd8642b763d"
  }
}