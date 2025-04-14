variable "iam-activity-lambda" {
  type = map(string)
  default = {
    "stage-collection_lambda_layer" = "e1ac4ae88f17da52c54d0e3d90607a5b"
    "stage-collection_lambda_iam_activity" = "50d1189c896f480d8d71b4c9f06f6da2"
    "prod-collection_lambda_layer" = "56571f1879e827e71a22add860ed8f46"
    "prod-collection_lambda_iam_activity" = "9070869872070f833087e4a027086ff2"
  }
}