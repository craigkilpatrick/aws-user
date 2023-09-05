
module "user_asdfsdfa" {
  source    = "../../modules/iam-user-group"
  user_name = "AsdfsdfAsdfasdf"

  user_groups = [
    aws_iam_group.all_iam_users.name,
    %{~ for group in parameters.groups ~}
    ,
    %{~ endfor ~}
  ]
}
