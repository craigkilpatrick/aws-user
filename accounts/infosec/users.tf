
module "user_xcvxasd3x" {
  source    = "../../modules/iam-user-group"
  user_name = "Xcvxasd3Xcsdfssd3"

  user_groups = [
    aws_iam_group.all_iam_users.name,
  ]
}
