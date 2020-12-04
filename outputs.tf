
output "cf_distribution_domain_name" {
    value = aws_cloudfront_distribution.cf_saleor_frontend_dashboard.domain_name
    #sensitive = true
}
