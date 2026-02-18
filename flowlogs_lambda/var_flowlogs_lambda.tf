variable "flowlogs-lambda" {
  type = map(string)
  default = {
    "stage-collection_lambda_layer" = "e1ac4ae88f17da52c54d0e3d90607a5b"
    "stage-collection_lambda_flowlogs" = "50d1189c896f480d8d71b4c9f06f6da2"
    "prod-collection_lambda_layer" = "6de35e40e3665eac2141879b71d3e7eb"
    "prod-collection_lambda_flowlogs" = "ac64c01a935bb98a8d9f1bdbe321b715"
  }
}