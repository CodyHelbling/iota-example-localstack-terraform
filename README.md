# iota-example-localstack-terraform

A small example of using Terraform with Localstack.

TODO:
- Find an idiomatic way in Terraform to use Localstack over AWS by reading an environment variable.
- Improve documentation.

## Getting Started

In one console: `localstack start`
- This is nice to keep open because it can catch output from localstack services.
- If you don't want to spin up all AWS services `export SERVICES=dynamodb,iam,lambda` before running `localstack 
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
