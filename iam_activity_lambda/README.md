Lightlytics Identity Activity (IAM Logs) Terraform Module
=========================================================
This module creates and collects CloudTrail logs to provide visibility of how identities are being assumed and used across your AWS environment.
Integrating with this module will help you monitor and analyze any identity (Identity Access Management - IAM) activity in your account with automatic correlation to your cloud resources.


Requirements
------------
- Must be used with Lightlytics [provider](https://github.com/lightlytics-terraform/lightlytics-provider.git) module
- Must be used with [basic integration](https://github.com/lightlytics-terraform/lightlytics-module/tree/main/basic_integration) module
- An AWS account configured with [management events](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-events-with-cloudtrail.html) trail on CloudTrail.
- The S3 bucket name storing the logs of the trail.


Usage
-----

```hcl
module "iam-activity-logs-us-east-1" {
  source = "github.com/lightlytics-terraform/lightlytics-module/iam_activity_lambda"
  environment                                  = "<Your_Organization_Name_From_The_URL>"
  lightlytics_collection_token                 = "lightlytics_account.<Lightlytics_provider_resource>.lightlytics_collection_token"
  lightlytics_iam_activity_role                = module.lightlytics-module.lightlytics_iam_activity_role
  iam_activity_bucket_name                     = "<Your_S3_Bucket_Name_Storing_CloudTrail_Events>"
}
```


Inputs
------
| Variable Name                     | Description                                  | Notes                                                                        | Type     | Required? | Default |
| :-------------------------------- | :------------------------------------------  | :----------------------------------------------------------------------------|:---------|:--------- |:--------|
| environment                       | Your organization name from the URL     | Only the name, e.g mike from `https://mike.lightlytics.com`                  | `string` | Yes       | n/a     |       | `string` | Yes       | n/a     |
| lightlytics_collection_token      | Lightlytics collection token                 |                                                                              | `string` | Yes       | n/a     |
| lightlytics_iam_activity_role     | Lightlytics IAM Activity role arn            |                                                                              | `string` | Yes       | n/a     |
| iam_activity_bucket_name          | Your S3 bucket name that stores CloudTrail events |                                                                              | `string` | Yes       | n/a     |


Run
---
This Terraform module will do the following:

On apply:
- Create IAM policy
- Create IAM role
- Create Lambda function
- Create IAM role for Lambda function
- Create trigger in the Lambda function

On destroy:
- Delete all above resources including disconnecting the AWS account from Lightlytics platform


Documentation
-------------
If you're new to Lightlytics and want to get started, feel free to [contact us](https://www.lightlytics.com/contact-us) or checkout our [documentation](https://docs.lightlytics.com/) website.


Community
---------
- Join Lightlytics community on [Slack](https://join.slack.com/t/lightlyticscommunity/shared_invite/zt-1f7dk2yo7-xBTOU_o4tOnAjoFxfHVF8Q)


Getting Help
------------
Please use these resources for getting help:
- [Slack](https://join.slack.com/t/lightlyticscommunity/shared_invite/zt-1f7dk2yo7-xBTOU_o4tOnAjoFxfHVF8Q)
- Email: support@lightlytics.com
