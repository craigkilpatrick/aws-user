
module "user_xcvxasdx" {
  source    = "../../modules/iam-user-group"
  user_name = "XcvxasdXcsdfssd"

  user_groups = [
    aws_iam_group.all_iam_users.name,
    aws_iam_group.sandbox_developers.name,
  ]
}
