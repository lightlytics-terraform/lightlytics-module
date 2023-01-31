variable "flowlogs-lambda" {
  type = map(string)
  default = {
    "stage-collection_lambda_layer" = "b3aa7f22624cc284256d5e4f9f1f67f0"
    "stage-collection_lambda_flowlogs" = "afbdb22bc6257a45884717530826d960"
    "prod-collection_lambda_layer" = "1463164a7c6d8ed42ce4d8f2eec1812b"
    "prod-collection_lambda_flowlogs" = "afbdb22bc6257a45884717530826d960"
  }
}