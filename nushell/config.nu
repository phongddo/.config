# Nushell Environment Config File
#
# version = "0.100.0"

let path = [
  $env.PATH
  '/opt/homebrew/bin'
  $"($env.HOME)/.cargo/bin"
] | reduce { |it, acc|
  $acc | split row (char esep) | append $it
}

$env.PATH = $path

$env.PATH = (
  $env.PATH
  | split row (char esep)
  | append /usr/local/bin
  | append ($env.HOME | path join .cargo bin)
  | append ($env.HOME | path join .local bin)
  | append /opt/homebrew/bin
  | uniq
)
