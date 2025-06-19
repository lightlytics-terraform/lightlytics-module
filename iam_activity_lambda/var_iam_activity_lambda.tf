variable "iam-activity-lambda" {
  type = map(string)
  default = {
    "stage-collection_lambda_layer" = "e1ac4ae88f17da52c54d0e3d90607a5b"
    "stage-collection_lambda_iam_activity" = "50d1189c896f480d8d71b4c9f06f6da2"
    "prod-collection_lambda_layer" = "98919b98292d9b3ec577cb43bd280a2a"
    "prod-collection_lambda_iam_activity" = "9cf1709dd6146fb541e090981f983c1d"
  }
}