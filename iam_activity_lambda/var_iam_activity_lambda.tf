variable "iam-activity-lambda" {
  type = map(string)
  default = {
    "stage-collection_lambda_layer" = "e1ac4ae88f17da52c54d0e3d90607a5b"
    "stage-collection_lambda_iam_activity" = "50d1189c896f480d8d71b4c9f06f6da2"
    "prod-collection_lambda_layer" = "7f41f3c46cd9b7610a82bc67d83c5dcc"
    "prod-collection_lambda_iam_activity" = "61ef7d56d538dd9aa8718dd4e793955f"
  }
}