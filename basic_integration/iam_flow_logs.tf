resource "aws_iam_role" "lightlytics-FlowLogs-lambda-role" {
  count = var.enable_flowlogs == true ? 1 : 0
  name = "${var.environment}-lightlytics-FlowLogs-role"
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

resource "aws_iam_policy" "lightlytics_flowlogs_secret_lambda_policy" {
  count = var.enable_flowlogs == true ? 1 : 0
  name   = "${var.environment}-lightlytics-secret-policy"
  policy = jsonencode({
    "Version" : "2012-10-17"
    "Statement" : [
      {
        Action = [
          "kms:Decrypt"
        ],
        Effect = "Allow",
        Resource = "*"
      },
      {
        Action = [
          "secretsmanager:GetSecretValue"
        ],
        Effect = "Allow",
        Resource = "arn:aws:secretsmanager:*:${var.aws_account_id}:secret:${local.collection_flowlogs_token_secret_name}"
      }
    ]

  })
}

resource "aws_iam_policy" "lightlytics-FlowLogs-lambda-policy" {
  count = var.enable_flowlogs == true ? 1 : 0
  name   = "${var.environment}-lightlytics-FlowLogs-lambda-policy"
  path   = "/"
  policy = jsonencode({
    "Version" : "2012-10-17"
    "Statement" : [
      {
        Action = [
          "logs:CreateLogGroup",
          "logs:CreateLogStream",
          "logs:PutLogEvents",
          "logs:CreateLogGroup",
          "logs:CreateLogStream",
          "logs:PutLogEvents",
          "s3:GetObject",
          "s3:ListBucket",
          "s3:GetBucketLocation",
          "s3:GetObjectVersion",
          "s3:GetLifecycleConfiguration",
          "ec2:DescribeFlowLogs",
          "ec2:CreateNetworkInterface",
          "ec2:DescribeNetworkInterfaces",
          "ec2:DeleteNetworkInterface",
          "ec2:AssignPrivateIpAddresses",
          "ec2:UnassignPrivateIpAddresses",
        ],
        Effect = "Allow",
        Resource = "*"
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lightlytics-role-attach-flow-logs" {
  count = var.enable_flowlogs == true ? 1 : 0
  role       = aws_iam_role.lightlytics-FlowLogs-lambda-role[0].name
  policy_arn = aws_iam_policy.lightlytics-FlowLogs-lambda-policy[0].arn
}

resource "aws_iam_role_policy_attachment" "lightlytics-role-attach-flow-logs-secret-policy" {
  count = var.enable_flowlogs == true ? 1 : 0
  role       = aws_iam_role.lightlytics-FlowLogs-lambda-role[0].name
  policy_arn = aws_iam_policy.lightlytics_secret_lambda_policy[0].arn
}
