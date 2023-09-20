# Terraform AWS Role Module

TODO:

-   add tests

<!-- BEGIN_TF_DOCS -->

## Requirements

| Name                                                   | Version |
| ------------------------------------------------------ | ------- |
| <a name="requirement_aws"></a> [aws](#requirement_aws) | >= 5.0  |

## Providers

| Name                                             | Version |
| ------------------------------------------------ | ------- |
| <a name="provider_aws"></a> [aws](#provider_aws) | >= 5.0  |

## Modules

No modules.

## Resources

| Name                                                                                                                                              | Type        |
| ------------------------------------------------------------------------------------------------------------------------------------------------- | ----------- |
| [aws_iam_role.role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role)                                         | resource    |
| [aws_iam_role_policy_attachment.policies](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource    |
| [aws_iam_policy.policies](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy)                              | data source |
| [aws_iam_policy_document.assumeRoleDetails](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document)   | data source |

## Inputs

| Name                                                                                          | Description                                         | Type           | Default | Required |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------- | -------------- | ------- | :------: |
| <a name="input_policies"></a> [policies](#input_policies)                                     | Set of the AWS policies to be included in the role. | `set(string)`  | n/a     |   yes    |
| <a name="input_principalIdentifiers"></a> [principalIdentifiers](#input_principalIdentifiers) | AssumeRole principal identifiers.                   | `list(string)` | n/a     |   yes    |
| <a name="input_principalType"></a> [principalType](#input_principalType)                      | AssumeRole principal type.                          | `string`       | n/a     |   yes    |
| <a name="input_roleName"></a> [roleName](#input_roleName)                                     | Name of the role to be created.                     | `string`       | n/a     |   yes    |

## Outputs

| Name                                            | Description |
| ----------------------------------------------- | ----------- |
| <a name="output_role"></a> [role](#output_role) | n/a         |

<!-- END_TF_DOCS -->
