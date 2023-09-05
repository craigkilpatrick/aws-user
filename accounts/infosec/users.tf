
module "user_${{parameters.firstName | lower | trim}}${{parameters.lastName | trim | truncate(1, true, "")}}" {
  source    = "../../modules/iam-user-group"
  user_name = "${{parameters.firstName | capitalize}}${{parameters.lastName | capitalize}}"

  user_groups = [
    aws_iam_group.all_iam_users.name,
    {% for group in parameters.groups ~%}
    ${{group}},
    {% endfor ~%}
  ]
}
