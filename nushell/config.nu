# Nushell Environment Config File
#
# version = "0.100.0"

$env.PATH = (
  $env.PATH
  | split row (char esep)
  | append /usr/local/bin
  | append ($env.HOME | path join .cargo bin)
  | append ($env.HOME | path join .local bin)
  | append /opt/homebrew/bin
  | uniq
)

$env.config.show_banner = false
