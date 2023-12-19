variable "iam-activity-lambda" {
  type = map(string)
  default = {
    "stage-collection_lambda_layer" = "7defdd088df940d698d7a736fc3eb8d2"
    "stage-collection_lambda_iam_activity" = "d3422a591b61069f6994aa3ee1e6e12d"
    "prod-collection_lambda_layer" = "c6089f48aeb2a3bf17a77f936ea0b344"
    "prod-collection_lambda_iam_activity" = "250b54a2499d95450569d037be0d17eb"
  }
}