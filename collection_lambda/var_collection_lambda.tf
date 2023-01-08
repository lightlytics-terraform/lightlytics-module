variable "collection-lambda" {
  type = map(string)
  default = {
    "stage-collection_lambda_layer" = "b3aa7f22624cc284256d5e4f9f1f67f0"
    "stage-collection_lambda_cloudwatch" = "afbdb22bc6257a45884717530826d960"
    "prod-collection_lambda_layer" = "6db3084b215f45cfcada8f862e27cfe4"
    "prod-collection_lambda_cloudwatch" = "afbdb22bc6257a45884717530826d960"
  }
}