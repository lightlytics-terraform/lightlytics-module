variable "flowlogs-lambda" {
  type = map(string)
  default = {
    "stage-collection_lambda_layer" = "3dadb74231727ce3a5ab33b2aa28ad24"
    "stage-collection_lambda_flowlogs" = "ad43ff0c9e398a607aea96e0b46c8022"
    "prod-collection_lambda_layer" = "d08e9f807334125d8d44cc1db7fcd155"
    "prod-collection_lambda_flowlogs" = "cab6efc34459a63d4b59214aaa2cdf8d"
  }
}