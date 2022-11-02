variable "collection-lambda" {
  type = map(string)
  default = {
    "stage-collection_lambda_layer" = "949eb6f997b73f02087589dd8cfbfcc8"
    "stage-collection_lambda_cloudwatch" = "ad43ff0c9e398a607aea96e0b46c8022"
    "prod-collection_lambda_layer" = "6e6ef03d0a1b2dc2fd9f921cf2fe3661"
    "prod-collection_lambda_cloudwatch" = "ad43ff0c9e398a607aea96e0b46c8022"
  }
}