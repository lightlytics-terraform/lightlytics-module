variable "flowlogs-lambda" {
  type = map(string)
  default = {
    "stage-collection_lambda_layer" = "9226727a566ec35be0ebcce335fa10d1"
    "stage-collection_lambda_flowlogs" = "d3422a591b61069f6994aa3ee1e6e12d"
    "prod-collection_lambda_layer" = "24ad10212c195b9a805df9b82493877b"
    "prod-collection_lambda_flowlogs" = "6c0c66c12749eb83543b83c0b2c27e69"
  }
}