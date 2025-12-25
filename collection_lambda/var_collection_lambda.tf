variable "collection-lambda" {
  type = map(string)
  default = {
    "stage-collection_lambda_layer" = "e1ac4ae88f17da52c54d0e3d90607a5b"
    "stage-collection_lambda_cloudwatch" = "50d1189c896f480d8d71b4c9f06f6da2"
    "prod-collection_lambda_layer" = "27ab1c62af9d5b19863d8a540e067d55"
    "prod-collection_lambda_cloudwatch" = "ac64c01a935bb98a8d9f1bdbe321b715"
  }
}