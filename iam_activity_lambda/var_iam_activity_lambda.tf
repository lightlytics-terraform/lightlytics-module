variable "iam-activity-lambda" {
  type = map(string)
  default = {
    "stage-collection_lambda_layer" = "e1ac4ae88f17da52c54d0e3d90607a5b"
    "stage-collection_lambda_iam_activity" = "50d1189c896f480d8d71b4c9f06f6da2"
    "prod-collection_lambda_layer" = "17fab7ad0beff010a119e25a1db8265a"
    "prod-collection_lambda_iam_activity" = "b3c47c62a3139f522973182c1752a3ac"
  }
}