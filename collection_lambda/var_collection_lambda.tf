variable "collection-lambda" {
  type = map(string)
  default = {
    "stage-collection_lambda_layer" = "55f619cd0bd3af151ce3989794734413"
    "stage-collection_lambda_cloudwatch" = "8257b74f2dca94a7b0084432f6c44614"
    "prod-collection_lambda_layer" = "61296550a16ec01e74ea5f6683b440e5"
    "prod-collection_lambda_cloudwatch" = "8257b74f2dca94a7b0084432f6c44614"
  }
}