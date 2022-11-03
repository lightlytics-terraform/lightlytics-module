resource "aws_iam_role" "lightlytics-IamActivity-lambda-role" {
  count = var.enable_iam_activity == true ? 1 : 0
  name = "${var.environment}-lightlytics-IamActivity-role"
  assume_role_policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" = [
      {
        Effect = "Allow",
        Principal = {
          "Service" : "lambda.amazonaws.com"
        },
        Action = "sts:AssumeRole"
      }
    ]
  })
}

resource "aws_iam_policy" "lightlytics-IamActivity-lambda-policy" {
  count = var.enable_iam_activity == true ? 1 : 0
  name   = "${var.environment}-lightlytics-IamActivity-lambda-policy"
  path   = "/"
  policy = jsonencode({
    "Version" : "2012-10-17"
    "Statement" : [
      {
        Action = [
          "s3:GetObject",
          "s3:ListBucket",
          "s3:GetBucketLocation",
          "s3:GetObjectVersion",
          "s3:GetLifecycleConfiguration"
        ],
        Effect = "Allow",
        Resource = "*"
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lightlytics-role-attach-iam-activity-logs" {
  count = var.enable_iam_activity == true ? 1 : 0
  role       = aws_iam_role.lightlytics-IamActivity-lambda-role[0].name
  policy_arn = aws_iam_policy.lightlytics-IamActivity-lambda-policy[0].arn

}
resource "aws_iam_role_policy_attachment" "lightlytics-AWSLambdaBasicExecutionRole-iam-activity-logs" {
  count = var.enable_iam_activity == true ? 1 : 0
  role       = aws_iam_role.lightlytics-IamActivity-lambda-role[0].name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"

}
resource "aws_iam_role_policy_attachment" "lightlytics-AWSLambdaVPCAccessExecutionRole-iam-activity-logs" {
  count = var.enable_iam_activity == true ? 1 : 0
  role       = aws_iam_role.lightlytics-IamActivity-lambda-role[0].name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaVPCAccessExecutionRole"

}