variable "flowlogs-lambda" {
  type = map(string)
  default = {
    "stage-collection_lambda_layer" = "b3aa7f22624cc284256d5e4f9f1f67f0"
    "stage-collection_lambda_flowlogs" = "afbdb22bc6257a45884717530826d960"
    "prod-collection_lambda_layer" = "2f18643bc14468495e115e8cf94da154"
    "prod-collection_lambda_flowlogs" = "afbdb22bc6257a45884717530826d960"
  }
}