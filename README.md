# iota-example-localstack-terraform

A small example of using Terraform with Localstack.

TODO:
- Find an idiomatic way in Terraform to use Localstack over AWS by reading an environment variable.
- Improve documentation.


[This](terraform/provider.tf) is how I pointed to Localstack instead of AWS.
```hcl-terraform
provider "aws" {
  endpoints {
    dynamodb = "http://localhost:4569"
    iam = "http://localhost:4593"
    lambda = "http://localhost:4574"
  }
}
```
## Getting Started

`cd terraform; make localstack`
    
`make (init|plan|apply)`

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
