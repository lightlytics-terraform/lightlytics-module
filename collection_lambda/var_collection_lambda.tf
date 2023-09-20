variable "collection-lambda" {
  type = map(string)
  default = {
    "stage-collection_lambda_layer" = "c8f2eeda72015355c7d6087fcf50ceaf"
    "stage-collection_lambda_cloudwatch" = "250b54a2499d95450569d037be0d17eb"
    "prod-collection_lambda_layer" = "c6089f48aeb2a3bf17a77f936ea0b344"
    "prod-collection_lambda_cloudwatch" = "250b54a2499d95450569d037be0d17eb"
  }
}