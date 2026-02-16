variable "collection-lambda" {
  type = map(string)
  default = {
    "stage-collection_lambda_layer" = "e1ac4ae88f17da52c54d0e3d90607a5b"
    "stage-collection_lambda_cloudwatch" = "50d1189c896f480d8d71b4c9f06f6da2"
    "prod-collection_lambda_layer" = "5e0b654211146478f5520ef773d2942a"
    "prod-collection_lambda_cloudwatch" = "ac64c01a935bb98a8d9f1bdbe321b715"
  }
}