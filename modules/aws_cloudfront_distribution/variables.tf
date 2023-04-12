variable "enabled" {
  type        = bool
  description = "Specify whether the distribution is enabled to accept end user requests for content."
}

variable "cloudfront_default_certificate" {
  type        = bool
  description = "if you want viewers to use HTTPS to request your objects and you're using the CloudFront domain name for your distribution"
  default     = false
}

variable "is_ipv6_enabled" {
  type        = bool
  description = "Whether the IPv6 is enabled for the distribution."
  default     = false
}

variable "domain_name_aliases" {
  type        = list(any)
  description = "Extra CNAMEs (alternate domain names), if any, for this distribution"
}

variable "origin" {
  description = "One or more origins for this distribution (multiples allowed)"
}

variable "iam_certificate_id" {
  type        = string
  description = "IAM certificate identifier of the custom viewer certificate for this distribution if you are using a custom domain"
  default     = ""
}

variable "comment" {
  type        = string
  description = "Any comments you want to include about the distribution"
  default     = ""
}

variable "default_cache_behavior" {
  description = "Default cache behavior for this distribution (maximum one)"
}

variable "restriction_type" {
  type        = string
  description = "Method that you want to use to restrict distribution of your content by country: none, whitelist, or blacklist"
}

variable "locations" {
  type        = list(any)
  description = "ISO 3166-1-alpha-2 codes for which CloudFront either distribute content (whitelist) or not distribute content (blacklist). If the type is specified as none an empty array can be used"
}

variable "acm_certificate_arn" {
  type        = string
  description = "ARN of the AWS Certificate Manager certificate that you wish to use with this distribution"
  default     = ""
}

variable "ssl_support_method" {
  type        = string
  description = "Specify how CloudFront serve HTTPS requests."
}

variable "minimum_protocol_version" {
  type        = string
  description = "Minimum version of the SSL protocol that you want CloudFront to use for HTTPS connections"
}

variable "tags" {
  type        = map(any)
  description = "Tags to assign to Resource"
}