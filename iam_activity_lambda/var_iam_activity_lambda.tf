variable "iam-activity-lambda" {
  type = map(string)
  default = {
    "stage-collection_lambda_layer" = "e1ac4ae88f17da52c54d0e3d90607a5b"
    "stage-collection_lambda_iam_activity" = "50d1189c896f480d8d71b4c9f06f6da2"
    "prod-collection_lambda_layer" = "0e45e270852117569cc20a8950544952"
    "prod-collection_lambda_iam_activity" = "509a92641d90cdd4d64c696db58aec06"
  }
}