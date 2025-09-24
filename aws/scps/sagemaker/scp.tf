resource "aws_organizations_policy" "ai_controls" {
  name        = "AiSCP"
  description = "AI Service Control Policy"
  type        = "SERVICE_CONTROL_POLICY"

  content = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Deny"
        Action = "sagemaker:CreateModel"
        Resource = "*"
        Condition = {
          Bool = {
            "sagemaker:NetworkIsolation" = "false"
          },
          Null = {
            "sagemaker:VpcSubnets" = "true"
          }
        }
      }
    ]
  })

  tags = {
    Name = "Ai SCP"
  }
}
