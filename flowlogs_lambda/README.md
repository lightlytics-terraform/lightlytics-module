Lightlytics Terraform Module - Flowlogs Lambda
===========



Inputs
------
| Variable Name                     | Description                             | Notes                                                                        | Type           | Required? | Default |
| :-------------------------------- | :-------------------------------------  | :----------------------------------------------------------------------------|:---------------|:--------- |:--------|
| environment                       | Your environment URL including https:// | e.g `https://mike.lightlytics.com`                                           | `string`       | Yes       | `null`  |
| create_cloud_trail                |                                         |                                                                              | `bool`         | No        | `false` |
| enable_flowlogs                   |                                         |                                                                              | `bool`         | No        | `true`  |
| enable_cloudtrail                 |                                         |                                                                              | `bool`         | No        | `true`  |
| lightlytics_flowlogs_role         | VPC flowlogs role arn                   |																				 | `string`       | Yes       | `null`  |
| vpc_flowlogs_ids					| List of VPC IDs for creating flowlogs   |   																			 | `list(string)` | No        | `null`  |
| create_new_flowlogs_bucket		|                                         |                                                                      	     | `bool`         | No        | `false` |
| flowlogs_bucket_name              |                                         | Required if `create_new_flowlogs_bucket` set to false                        | `string`       | No        | `null`  |    
| s3_force_destroy                  |                                         |                                                                              | `bool`         | No        | `true`  |


Usage
-----

```hcl
module "flow-logs-us-east-1" {
  source = "github.com/lightlytics-terraform/lightlytics-module/flowlogs_lambda"
  environment                                  = "<Lightlytics_env>"
  lightlytics_collection_token                 = "lightlytics_account.<Lightlytics_provider_resource>.lightlytics_collection_token"
  vpc_flowlogs_ids                             = [""]
  lightlytics_flowlogs_role                    = module.lightlytics-module.lightlytics_flowlogs_role
  flowlogs_bucket_name                         = ""
}
```


Adding AWS provider
-----

- MUST USE THE LIGHTLYTICS PROVIDER FOR CREATING THE NEW INTEGRATION ACCOUNT:
  https://github.com/lightlytics-terraform/lightlytics-provider.git
  - Must create basic_integration module with the var -> "enable_cloudtrail=true"
