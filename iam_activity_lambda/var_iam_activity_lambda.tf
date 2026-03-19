variable "iam-activity-lambda" {
  type = map(string)
  default = {
    "stage-collection_lambda_layer" = "e1ac4ae88f17da52c54d0e3d90607a5b"
    "stage-collection_lambda_iam_activity" = "50d1189c896f480d8d71b4c9f06f6da2"
    "prod-collection_lambda_layer" = "cc03edc170dfe3f0de62ccad09c1bcb6"
    "prod-collection_lambda_iam_activity" = "8c421c07f2bf89f05c00221fc34efd0c"
  }
}