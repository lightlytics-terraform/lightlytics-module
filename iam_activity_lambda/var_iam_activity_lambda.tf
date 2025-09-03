variable "iam-activity-lambda" {
  type = map(string)
  default = {
    "stage-collection_lambda_layer" = "e1ac4ae88f17da52c54d0e3d90607a5b"
    "stage-collection_lambda_iam_activity" = "50d1189c896f480d8d71b4c9f06f6da2"
    "prod-collection_lambda_layer" = "903c7914ee2b25bcadaf7b814fa22028"
    "prod-collection_lambda_iam_activity" = "42f36ccb52027140918f0b5a15700c3d"
  }
}