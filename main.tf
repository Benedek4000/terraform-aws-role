terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
  }
}

data "aws_iam_policy_document" "assumeRoleDetails" {
  statement {
    sid     = "AssumeRoleDetails"
    effect  = "Allow"
    actions = ["sts:AssumeRole"]
    principals {
      type        = var.principalType
      identifiers = var.principalIdentifiers
    }
  }
}

resource "aws_iam_role" "role" {
  name               = var.roleName
  assume_role_policy = data.aws_iam_policy_document.assumeRoleDetails.json
}

data "aws_iam_policy" "policies" {
  for_each = var.policies
  name     = each.value
}

resource "aws_iam_role_policy_attachment" "policies" {
  for_each   = data.aws_iam_policy.policies
  role       = aws_iam_role.role.name
  policy_arn = each.value.arn
}
