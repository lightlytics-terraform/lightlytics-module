variable "iam-activity-lambda" {
  type = map(string)
  default = {
    "stage-collection_lambda_layer" = "e1ac4ae88f17da52c54d0e3d90607a5b"
    "stage-collection_lambda_iam_activity" = "50d1189c896f480d8d71b4c9f06f6da2"
    "prod-collection_lambda_layer" = "9a230873bca52fb4367df7cb68c90b80"
    "prod-collection_lambda_iam_activity" = "8607e938696b6ad63d8252a40b4b2c5e"
  }
}