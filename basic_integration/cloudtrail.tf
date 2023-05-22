resource "aws_cloudtrail" "lightlytics-CloudTrail" {
  depends_on = [aws_s3_bucket_policy.s3_cloudtrail_policy_attachment]
  count = var.create_cloud_trail == true ? 1 : 0
  name = "lightlytics-cloudtrail"
  s3_bucket_name = aws_s3_bucket.lightlytics-cloudtrail-bucket[0].id
  s3_key_prefix = "prefix"
  include_global_service_events = true
  is_multi_region_trail = true
}

resource "aws_s3_bucket" "lightlytics-cloudtrail-bucket" {
  count = var.create_cloud_trail == true ? 1 : 0
  bucket = "${var.environment}-lightlytics-cloudtrail-bucket"
  force_destroy = var.s3_force_destroy
}

resource "aws_s3_bucket_policy" "s3_cloudtrail_policy_attachment" {
  depends_on = [aws_s3_bucket.lightlytics-cloudtrail-bucket]
  count = var.create_cloud_trail == true ? 1 : 0
  bucket = aws_s3_bucket.lightlytics-cloudtrail-bucket[0].id
  policy = <<POLICY
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "AWSCloudTrailAclCheck20150319",
            "Effect": "Allow",
            "Principal": {
              "Service": "cloudtrail.amazonaws.com"
            },
            "Action": "s3:GetBucketAcl",
            "Resource": "arn:aws:s3:::${aws_s3_bucket.lightlytics-cloudtrail-bucket[0].id}"
        },
        {
            "Sid": "AWSCloudTrailWrite20150319",
            "Effect": "Allow",
            "Principal": {
              "Service": "cloudtrail.amazonaws.com"
            },
            "Action": "s3:PutObject",
            "Resource": "arn:aws:s3:::${aws_s3_bucket.lightlytics-cloudtrail-bucket[0].id}/prefix/AWSLogs/${var.cloud_account_id}/*",
            "Condition": {
                "StringEquals": {
                    "s3:x-amz-acl": "bucket-owner-full-control"
                }
            }
        }
    ]
}
POLICY
}
