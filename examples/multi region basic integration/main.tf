terraform {
  required_providers {
    lightlytics = {
      version = "0.2"
      source  = "lightlytics.com/api/lightlytics"
    }
  }
}

provider "aws" {
  access_key = ""  ## Your AWS access key
  secret_key = ""  ## Your AWS access key
  region     = ""    ## The AWS region where the provider will operate
}

provider "aws" {
  access_key = ""  ## Your AWS access key
  secret_key = ""  ## Your AWS access key
  region     = ""  ## The AWS region where the provider will operate
  alias      = ""  ## Alias to second region, will be used in the collection module e.g "west"
}

provider "lightlytics" {
  alias        = "test-integration"
  host         = ""  ## Your environment URL, including https://
  username     = ""  ## Username to Lightlytics platform
  password     = ""  ## Password to Lightlytics platform 
  workspace_id = ""  ## Can be obtained from Lightlytics platform, if not specified, it will use the first WS
}

resource "lightlytics_account" "awsmike" {  ##awsmike can be changed. If changed, change in all respective vars
  provider         = lightlytics.test-integration
  account_type     = "AWS"
  cloud_account_id = ""             ## Your desired AWS account ID
  display_name     = ""             ## Your integration display name within Lightlytics platform
  cloud_regions    = ["us-east-1"]  ## Desired regions to be scanned
  stack_region     = "us-east-1"    ## Main region to be deployed
}

module "lightlytics" {
  source = "github.com/lightlytics-terraform/lightlytics-module/basic_integration"
  environment                    = ""  ## your organization name from the URL, only the name e.g mike from mike.lightlytics.com
  cloud_account_id               = lightlytics_account.awsmike.cloud_account_id
  Lightlytics_internal_accountID = lightlytics_account.awsmike.id
  lightlytics_account_externalID = lightlytics_account.awsmike.external_id
  lightlytics_auth_token         = lightlytics_account.awsmike.account_auth_token
}

module "lightlytics-collection-us-east-1" {
  source                       = "github.com/lightlytics-terraform/lightlytics-module/collection_lambda"
  environment                  = ""  ## your organization name from the URL, only the name e.g mike from mike.lightlytics.com
  cloud_account_id             = lightlytics_account.awsmike.cloud_account_id
  lightlytics_collection_token = lightlytics_account.awsmike.lightlytics_collection_token
  lightlytics_cloudwatch_role  = module.lightlytics.lightlytics_cloudwatch_role
}

module "lightlytics-collection-us-west-2" {
  source = "github.com/lightlytics-terraform/lightlytics-module/collection_lambda"
  providers = {
    aws = aws.west  ## insert the alias the in format "aws.alias"
  }
  environment                  = ""  ## your organization name from the URL, only the name e.g mike from mike.lightlytics.com
  cloud_account_id             = lightlytics_account.awsmike.cloud_account_id
  lightlytics_collection_token = lightlytics_account.awsmike.lightlytics_collection_token
  lightlytics_cloudwatch_role  = module.lightlytics.lightlytics_cloudwatch_role
}
