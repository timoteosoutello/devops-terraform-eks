# Terraform Assessment

This module aims to assess the candidate's Terraform knowledge by asking a number of questions. It is recommended to have terraform installed as it may make it easier for you to share your working

## Scenario

A junior member of staff has written some terraform. They have asked you to help

## Question 1

Your colleague appears to be having errors when testing their terrform. Please help by fixing the terraform for them and walking through what you did.

**Response**:

Tried the commands:

- *terraform init* command in the terraform folder

  - Success output result
    - Remarks: Is possible to provide backend parameters if necessary
      - *terraform init -backend-config="region=sa-east"*

- *terraform plan -var-file configurations\dev\us-east-1\dev.tf* command in the terraform folder

  - Error found

    - *Error: Invalid resource type*

        *on main.tf line 1, in resource "aws_instanc" "test_instance":*
         *1: resource "aws_instanc" "test_instance" {*

      *The provider provider.aws does not support resource type "aws_instanc".*

      - Typo found, *aws_instanc* to *aws_instance*

  - Runned again, issues found

    - *╷
      │ Error: Unexpected "tags" block
      │
      │   on configurations\dev\us-east-1\dev.tf line 7:
      │    7: tags {
      │
      │ Blocks are not allowed here.
      - Adjusted to *tags = {* instead of *tags {*

  - Runned again, issues found

    - *╷*
      *│ Error: Incorrect attribute value type*
      *│*
      *│   on main.tf line 17, in resource "aws_security_group" "test_instance_sg":*
      *│   17:     cidr_blocks = var.ssh_cidr*
      *│     ├────────────────*
      *│     │ var.ssh_cidr is "10.0.0.0/16"*
      *│*
      *│ Inappropriate value for attribute "cidr_blocks": list of string required.*
      - Adjusted main.tf from *cidr_blocks = var.ssh_cidr* to *cidr_blocks = [var.ssh_cidr]*

## Question 2

The terraform would need its state storing and this code has not been added. Please write some terraform so that the state can be stored safely.

**Response**:

Created backend.tf file for that purpose.

Used s3 type.

## Question 3

A new request to add a SQL database has come in. It would interact with the service currently being created here. Please suggest a resource that would fill this requirement and write the terraform to create this.

**Response**: Created an rds.tf for that purpose.

