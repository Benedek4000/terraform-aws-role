variable "roleName" {
  type        = string
  description = "Name of the role to be created."
}

variable "principalType" {
  type        = string
  description = "AssumeRole principal type."
}

variable "principalIdentifiers" {
  type        = list(string)
  description = "AssumeRole principal identifiers."
}

variable "policies" {
  type        = set(string)
  description = "Set of the AWS policies to be included in the role."
}

