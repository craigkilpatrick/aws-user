
module "user_uwuu" {
  source    = "../../modules/iam-user-group"
  user_name = "UwuUwu"

  user_groups = [
    aws_iam_group.all_iam_users.name,
    aws_iam_group.sandbox_developers.name,
    aws_iam_group.prod_developers.name,
    aws_iam_group.non_prod_developers.name,
    ]
}
