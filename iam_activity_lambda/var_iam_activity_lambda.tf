variable "iam-activity-lambda" {
  type = map(string)
  default = {
    "stage-collection_lambda_layer" = "e1ac4ae88f17da52c54d0e3d90607a5b"
    "stage-collection_lambda_iam_activity" = "50d1189c896f480d8d71b4c9f06f6da2"
    "prod-collection_lambda_layer" = "cbdecb058b606def0110ac19a7fd1579"
    "prod-collection_lambda_iam_activity" = "0e6a2b847657ffd8cf84fc13f1ecbd52"
  }
}