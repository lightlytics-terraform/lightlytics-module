variable "collection-lambda" {
  type = map(string)
  default = {
    "stage-collection_lambda_layer" = "3dadb74231727ce3a5ab33b2aa28ad24"
    "stage-collection_lambda_cloudwatch" = "ad43ff0c9e398a607aea96e0b46c8022"
    "prod-collection_lambda_layer" = "6e6ef03d0a1b2dc2fd9f921cf2fe3661"
    "prod-collection_lambda_cloudwatch" = "ad43ff0c9e398a607aea96e0b46c8022"
  }
}