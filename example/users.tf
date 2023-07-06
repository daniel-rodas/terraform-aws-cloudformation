resource "aws_iam_group" "breakglass" {
  name = "test-9382"
}

resource "aws_iam_user" "breakglass" {

    for_each = toset( var.user_list )

    name = each.key
}

resource "aws_iam_policy" "breakglass" {
  name        = "test-policy-01"
  description = "A test policy - 01"
  policy      = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "ec2:*",
        "iam:*"
      ],
      "Resource": "*"
    }
  ]
}
  EOF
}

# resource "aws_iam_user_group_membership" "example1" {
#   user = aws_iam_user.test-oieijj.name

#   groups = [
#     aws_iam_group.test-group.name
#   ]
# }

variable "user_list" {
  type = list(string)
  default = [ "brocko", "wendee", "miles" ]
}
