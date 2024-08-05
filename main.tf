resource "aws_secretsmanager_secret" "secret" {
  name = var.secret_name
  recovery_window_in_days = 30
  policy = "{}"
}
resource "aws_secretsmanager_secret_version" "example" {
  secret_id     = aws_secretsmanager_secret.secret.id
  secret_string = var.secret_value
}