
module "user_dfasdfa" {
  source    = "../../modules/iam-user-group"
  user_name = "DfasdfAsdfasdf"

  user_groups = [
    aws_iam_group.all_iam_users.name,
    %{ for group in parameters.groups ~}
    ,
    %{ endfor ~}
  ]
}
