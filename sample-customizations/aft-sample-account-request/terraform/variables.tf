variable "account_email" {
    description = "Email address for the new account"
    type        = string
    default = ""
}

variable "account_name" {
    description = "Name of the new account"
    type        = string
    default     = "AFT Sandbox Account"
}

variable "managed_organizational_unit" {
    description = "The name of the OU where the new account will be created"
    type        = string
    default     = ""
}

variable "sso_user_email" {
    description = "SSO user email for the new account"
    type        = string
    default     = ""
}

variable "sso_user_firstName" {
    description = "SSO user first name for the new account"
    type        = string
    default     = ""
}

variable "sso_user_lastName" {
    description = "SSO user last name for the new account"
    type        = string
    default     = ""
}