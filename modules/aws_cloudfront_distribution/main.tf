#creating Cloudfront distribution :
resource "aws_cloudfront_distribution" "first_shuttle_cf_dist" {
  enabled         = var.enabled
  aliases         = var.domain_name_aliases
  comment         = var.comment
  is_ipv6_enabled = var.is_ipv6_enabled
  dynamic "origin" {
    for_each = var.origin
    content {
      domain_name = origin.value.domain_name
      origin_id   = origin.value.origin_id
      dynamic "custom_origin_config" {
        for_each = origin.value.custom_origin_config
        content {
          http_port                = custom_origin_config.value.http_port
          https_port               = custom_origin_config.value.https_port
          origin_protocol_policy   = custom_origin_config.value.origin_protocol_policy
          origin_keepalive_timeout = custom_origin_config.value.origin_keepalive_timeout
          origin_read_timeout      = custom_origin_config.value.origin_read_timeout
          origin_ssl_protocols     = custom_origin_config.value.origin_ssl_protocols
        }
      }
    }
  }

  dynamic "default_cache_behavior" {
    for_each = var.default_cache_behavior
    content {
      allowed_methods        = default_cache_behavior.value.allowed_methods
      cached_methods         = default_cache_behavior.value.cached_methods
      target_origin_id       = default_cache_behavior.value.target_origin_id
      viewer_protocol_policy = default_cache_behavior.value.viewer_protocol_policy
      cache_policy_id        = default_cache_behavior.value.cache_policy_id
      compress               = default_cache_behavior.value.compress

    }
  }

  restrictions {
    geo_restriction {
      restriction_type = var.restriction_type
      locations        = var.locations
    }
  }
  viewer_certificate {
    cloudfront_default_certificate = var.cloudfront_default_certificate
    acm_certificate_arn            = var.acm_certificate_arn
    iam_certificate_id             = var.iam_certificate_id
    ssl_support_method             = var.ssl_support_method
    minimum_protocol_version       = var.minimum_protocol_version
  }
  tags = var.tags
}