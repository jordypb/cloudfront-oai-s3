data "aws_iam_policy_document" "s3_policy" {
  statement {
    actions = [
      "s3:GetObject"
    ]
    principals {
      type = "AWS"
      identifiers = ["${aws_cloudfront_origin_access_identity.origin_access_identity.iam_arn}"]
    }
    resources = [
      "arn:aws:s3:::saleor-frontend-dashboard-${var.tag_environment}/dashboard/*"
    ]
  }
}
