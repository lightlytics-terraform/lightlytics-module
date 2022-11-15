variable "flowlogs-lambda" {
  type = map(string)
  default = {
    "stage-collection_lambda_layer" = "949eb6f997b73f02087589dd8cfbfcc8"
    "stage-collection_lambda_flowlogs" = "ad43ff0c9e398a607aea96e0b46c8022"
    "prod-collection_lambda_layer" = "6db3084b215f45cfcada8f862e27cfe4"
    "prod-collection_lambda_flowlogs" = "ad43ff0c9e398a607aea96e0b46c8022"
  }
}