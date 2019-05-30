workflow "Test workflow" {
  on = "push"
  resolves = ["Tip of branch check"]
}

action "Tip of branch check" {
  uses = "BinaryMuse/tip-of-branch@1.0.0"
  args = "master"
  secrets = ["GITHUB_TOKEN"]
}
