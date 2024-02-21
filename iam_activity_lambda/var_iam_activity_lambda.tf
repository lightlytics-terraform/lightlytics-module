variable "iam-activity-lambda" {
  type = map(string)
  default = {
    "stage-collection_lambda_layer" = "9226727a566ec35be0ebcce335fa10d1"
    "stage-collection_lambda_iam_activity" = "d3422a591b61069f6994aa3ee1e6e12d"
    "prod-collection_lambda_layer" = "bc7e4ff0ef7103ca2d656a0d8f40096a"
    "prod-collection_lambda_iam_activity" = "d3422a591b61069f6994aa3ee1e6e12d"
  }
}