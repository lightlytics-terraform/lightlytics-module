variable "iam-activity-lambda" {
  type = map(string)
  default = {
    "stage-collection_lambda_layer" = "e1ac4ae88f17da52c54d0e3d90607a5b"
    "stage-collection_lambda_iam_activity" = "50d1189c896f480d8d71b4c9f06f6da2"
    "prod-collection_lambda_layer" = "1e8d00c5c5513f60c336658713ee2cd5"
    "prod-collection_lambda_iam_activity" = "74fe114d709c2efece809dfbd6a7577e"
  }
}