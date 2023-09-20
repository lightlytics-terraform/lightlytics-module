variable "collection-lambda" {
  type = map(string)
  default = {
    "stage-collection_lambda_layer" = "b94e2a4f561b96e0e7124df6db9922e3"
    "stage-collection_lambda_cloudwatch" = "2fd6a6b486a0a5ccf6d4acdc63e46f68"
    "prod-collection_lambda_layer" = "c6089f48aeb2a3bf17a77f936ea0b344"
    "prod-collection_lambda_cloudwatch" = "250b54a2499d95450569d037be0d17eb"
  }
}