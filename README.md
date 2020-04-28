# iota-example-localstack-terraform

A small example of using Terraform with Localstack.

TODO:
- Find an idiomatic way in Terraform to use Localstack over AWS by reading an environment variable.
- Improve documentation.


[This](terraform/main.hcl) is how I pointed to Localstack instead of AWS.
```hcl-terraform
provider "aws" {
  s3_force_path_style         = true
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_region_validation      = true
  skip_requesting_account_id  = true

  region = "us-west-2"

  endpoints = {
    dynamodb = "http://localhost:4569"
    iam = "http://localhost:4593"
    lambda = "http://localhost:4574"
  }
}
```
## Getting Started

In one console: `localstack start`
- Optional: Only spin up necessary services with `export SERVICES=dynamodb,iam,lambda` before running `localstack 
    start`
    
In another: `cd terraform; make all` (from project root)

Optional: `localstack web` to spin up Localstack's web dashboard ( http://0.0.0.0:8080/ )

See test.py for examples making calls to Localstack resources.

### Prerequisites
- Terraform
- Localstack

## Running the tests

See test.py

## Built With

* [Terraform](https://www.terraform.io/) - "...safely and predictably create, change, and improve infrastructure."
* [Localstack](https://github.com/localstack/localstack) - "A fully functional local AWS cloud stack."
