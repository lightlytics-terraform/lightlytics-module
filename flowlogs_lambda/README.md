Lightlytics Network Traffic Activity (Flow Logs) Terraform Module
=================================================================
This module is in charge of creating VPC flow logs with a custom format and sending it over to Lightlytics. 
Integrating with this module will help you analyze and troubleshoot network traffic activity and quickly identify issues in your cloud environments using enriched and detailed logs across VPCs, services, clusters, workloads, network components, and much more.


Requirements
------------
- Must be used with Lightlytics [provider](https://github.com/lightlytics-terraform/lightlytics-provider.git) module
- Must be used with [basic integration](https://github.com/lightlytics-terraform/lightlytics-module/tree/main/basic_integration) module while adding the following variable: `enable_cloudtrail = true`


Usage
-----

```hcl
module "flow-logs-us-east-1" {
  source = "github.com/lightlytics-terraform/lightlytics-module/flowlogs_lambda"
  environment                                  = "<https://<env_name>.lightlytics.com>"
  lightlytics_collection_token                 = "lightlytics_account.<Lightlytics_provider_resource>.lightlytics_collection_token"
  vpc_flowlogs_ids                             = ["vpc-1234","vpc-5678"]
  lightlytics_flowlogs_role                    = module.lightlytics-module.lightlytics_flowlogs_role
  flowlogs_bucket_name                         = "Your_Flow_Logs_S3_Bucket"
}
```


Inputs
------
| Variable Name                     | Description                                         | Notes                                                                        | Type           | Required? | Default |
| :-------------------------------- | :-------------------------------------------------  | :----------------------------------------------------------------------------|:---------------|:--------- |:--------|
| environment                       | Your environment URL including https://             | e.g `https://org.lightlytics.com`                                            | `string`       | Yes       | n/a     |
| enable_cloudtrail                 |                                                     |                                                                              | `bool`         | No        | `true`  |
| create_cloud_trail                |                                                     |                                                                              | `bool`         | No        | `false` |
| enable_flowlogs                   |                                                     |                                                                              | `bool`         | No        | `true`  |
| lightlytics_flowlogs_role         | Lightlytics role arn                                |																				 | `string`       | Yes       | n/a     |
| vpc_flowlogs_ids					| List of VPC IDs for creating flowlogs               |   																			 | `list(string)` | No        | n/a     |
| create_new_flowlogs_bucket		| Creates new S3 bucket to publish flow logs data to  |                                                                      	     | `bool`         | No        | `false` |
| flowlogs_bucket_name              | Your existing S3 bucket flow logs are published to  | Required if `create_new_flowlogs_bucket` is set to false                        | `string`       | No        | n/a     |    
| s3_force_destroy                  | Deletes the created S3 bucket upon destroy          | Relevant if `create_new_flowlogs_bucket` is set to true                          | `bool`         | No        | `true`  |  


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
