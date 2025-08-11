output "all_arns" {
	description = "The ARNs of all users"
	value = values(aws_iam_user.example)[*].arn
}
