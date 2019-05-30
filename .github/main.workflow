workflow "Test workflow" {
  on = "push"
  resolves = ["BinaryMuse/tip-of-branch@master"]
}

action "BinaryMuse/tip-of-branch@master" {
  uses = "BinaryMuse/tip-of-branch@master"
  args = "master other"
  secrets = ["GITHUB_TOKEN"]
}
