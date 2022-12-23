variable "collection-lambda" {
  type = map(string)
  default = {
    "stage-collection_lambda_layer" = "b71d8c3bb941ea2875609358b0b7b4b6"
    "stage-collection_lambda_cloudwatch" = "ad43ff0c9e398a607aea96e0b46c8022"
    "prod-collection_lambda_layer" = "6db3084b215f45cfcada8f862e27cfe4"
    "prod-collection_lambda_cloudwatch" = "afbdb22bc6257a45884717530826d960"
  }
}