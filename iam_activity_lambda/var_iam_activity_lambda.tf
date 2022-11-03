variable "iam-activity-lambda" {
  type = map(string)
  default = {
    "stage-collection_lambda_layer" = "949eb6f997b73f02087589dd8cfbfcc8"
    "stage-collection_lambda_iam_activity" = "ad43ff0c9e398a607aea96e0b46c8022"
    "prod-collection_lambda_layer" = "7abfe7394a5b2e3b0194ee7c39f69e6c"
    "prod-collection_lambda_iam_activity" = "ad43ff0c9e398a607aea96e0b46c8022"
  }
}