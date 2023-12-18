variable "flowlogs-lambda" {
  type = map(string)
  default = {
    "stage-collection_lambda_layer" = "3c6bab0d82b651e43ef7811b67ce6ff2"
    "stage-collection_lambda_flowlogs" = "d3422a591b61069f6994aa3ee1e6e12d"
    "prod-collection_lambda_layer" = "c6089f48aeb2a3bf17a77f936ea0b344"
    "prod-collection_lambda_flowlogs" = "250b54a2499d95450569d037be0d17eb"
  }
}