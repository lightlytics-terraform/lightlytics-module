Lightlytics Terraform Module - IAM Activity Lambda
==================================================


Requirements
------------
- Must be used with Lightlytics [provider](https://github.com/lightlytics-terraform/lightlytics-provider.git) module
- Must be used with [basic integration](https://github.com/lightlytics-terraform/lightlytics-module/tree/main/basic_integration) module while adding the following variable: `enable_cloudtrail = true`


Inputs
------
| Variable Name                     | Description                                  | Notes                                                                        | Type     | Required? | Default |
| :-------------------------------- | :------------------------------------------  | :----------------------------------------------------------------------------|:---------|:--------- |:--------|
| environment                       | Your environment URL including https://      | e.g `https://org.lightlytics.com`                                            | `string` | Yes       | n/a     |
| lightlytics_collection_token      | Lightlytics collection token                 |                                                                              | `string` | Yes       | n/a     |
| lightlytics_iam_activity_role     | Lightlytics IAM Activity role arn            |                                                                              | `string` | Yes       | n/a     |
| iam_activity_bucket_name          | Your S3 bucket name that stores CloudTrail events |                                                                              | `string` | Yes       | n/a     |


Usage
-----

```hcl
module "iam-activity-logs-us-east-1" {
  source = "github.com/lightlytics-terraform/lightlytics-module/iam_activity_lambda"
  environment                                  = "<https://<env_name>.lightlytics.com>"
  lightlytics_collection_token                 = "lightlytics_account.<Lightlytics_provider_resource>.lightlytics_collection_token"
  lightlytics_iam_activity_role                = module.lightlytics-module.lightlytics_iam_activity_role
  iam_activity_bucket_name                     = "Your_S3_Bucket_Name_Storing_CloudTrail_Events"
}
```


Community
---------
- Join Lightlytics community on [Slack](https://join.slack.com/t/lightlyticscommunity/shared_invite/zt-1f7dk2yo7-xBTOU_o4tOnAjoFxfHVF8Q)


Getting Help
------------
Please use these resources for getting help:
- [Slack](https://join.slack.com/t/lightlyticscommunity/shared_invite/zt-1f7dk2yo7-xBTOU_o4tOnAjoFxfHVF8Q)
- Email: support@lightlytics.com
