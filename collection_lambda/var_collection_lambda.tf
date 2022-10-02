variable "collection-lambda" {
  type = map(string)
  default = {
    "stage-collection_lambda_layer" = "ca0ea8926b716122f6824e453a1dfd4c"
    "stage-collection_lambda_cloudwatch" = "cab6efc34459a63d4b59214aaa2cdf8d"
    "prod-collection_lambda_layer" = "d08e9f807334125d8d44cc1db7fcd155"
    "prod-collection_lambda_cloudwatch" = "cab6efc34459a63d4b59214aaa2cdf8d"
  }
}