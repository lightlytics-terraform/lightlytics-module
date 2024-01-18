variable "collection-lambda" {
  type = map(string)
  default = {
    "stage-collection_lambda_layer" = "7defdd088df940d698d7a736fc3eb8d2"
    "stage-collection_lambda_cloudwatch" = "d3422a591b61069f6994aa3ee1e6e12d"
    "prod-collection_lambda_layer" = "bc7e4ff0ef7103ca2d656a0d8f40096a"
    "prod-collection_lambda_cloudwatch" = "d3422a591b61069f6994aa3ee1e6e12d"
  }
}