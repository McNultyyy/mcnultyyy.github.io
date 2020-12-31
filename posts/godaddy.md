# Setting up a custom domain name using GitHub pages

## Prerequisites

- GitHub account
- GoDaddy account + domain
- Terraform account

## Create GoDaddy API key

The following environment variables/github secrets need to be setup

Create a new API key from  
https://developer.godaddy.com/keys/

Set the following repository secrets at https://github.com/McNultyyy/mcnultyyy.github.io/settings/secrets/actions  
`GODADDY_API_KEY`  
`GODADDY_API_SECRET`

## Create the Terraform API key

Create a new API key  
https://app.terraform.io/app/mcnulty/settings/authentication-tokens

And set it up a repository secret with the key as `TF_API_TOKEN`

## Setting up the www domain

Create a new file in the root of your github project called "CNAME"  
The contents of this file should be the (sub)domain that you want to use (www.mcnulty.xyz)

Create a DNS entry in your provider with the following mapping

| Type  | Name | Value               |
| ----- | ---- | ------------------- |
| CNAME | www  | mcnultyyy.github.io |


A quick note on DNS entries:  
`A` entries map from a name to an IP  
`CNAME` entries map from a name to another name
