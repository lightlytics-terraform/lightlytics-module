variable "iam-activity-lambda" {
  type = map(string)
  default = {
    "stage-collection_lambda_layer" = "e1ac4ae88f17da52c54d0e3d90607a5b"
    "stage-collection_lambda_iam_activity" = "50d1189c896f480d8d71b4c9f06f6da2"
    "prod-collection_lambda_layer" = "99b36f02a5e21f5c87673ffc739e3f8f"
    "prod-collection_lambda_iam_activity" = "5e386f9a6adfc2f7e71c45d03795366d"
  }
}