variable "iam-activity-lambda" {
  type = map(string)
  default = {
    "stage-collection_lambda_layer" = "e1ac4ae88f17da52c54d0e3d90607a5b"
    "stage-collection_lambda_iam_activity" = "50d1189c896f480d8d71b4c9f06f6da2"
    "prod-collection_lambda_layer" = "0eee49d3582e038590f4d4096d72c6f9"
    "prod-collection_lambda_iam_activity" = "fab64013a5af58077df6da9eb506b4a5"
  }
}