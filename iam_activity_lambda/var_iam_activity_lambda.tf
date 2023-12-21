variable "iam-activity-lambda" {
  type = map(string)
  default = {
    "stage-collection_lambda_layer" = "7defdd088df940d698d7a736fc3eb8d2"
    "stage-collection_lambda_iam_activity" = "d3422a591b61069f6994aa3ee1e6e12d"
    "prod-collection_lambda_layer" = "0cbc3720df48462db9fbe4b8d60b934e"
    "prod-collection_lambda_iam_activity" = "d3422a591b61069f6994aa3ee1e6e12d"
  }
}