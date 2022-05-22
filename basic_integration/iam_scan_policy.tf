resource "aws_iam_role" "lightlytics-role" {
  name = "${var.environment}-lightlytics-role"
  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::${var.lightlytics_account}:root"
      },
      "Action": "sts:AssumeRole",
      "Condition": {
        "StringEquals": {
          "sts:ExternalId": "${var.lightlytics_account_externalID}"
        }
      }
    }
  ]
}
EOF
}

resource "aws_iam_policy" "lightlytics-policy" {
  name = "${var.environment}-lightlytics-policy"
  path = "/"
  policy = jsonencode({
    "Version" : "2012-10-17"
    "Statement" : [
      {
        Action = [],
        Effect = "Allow",
        Resource = "*"
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lightlytics-role-attach-global" {
  role = aws_iam_role.lightlytics-role.name
  policy_arn = aws_iam_policy.lightlytics-policy.arn
}
