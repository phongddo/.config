# Nushell Environment Config File
#
# version = "0.100.0"

$env.PATH = (
  $env.PATH
  | split row (char esep)
  | append /usr/local/bin
  | append ($env.HOME | path join .cargo bin)
  | append ($env.HOME | path join .local bin)
  | append ($env.HOME | path join .deno bin)
  | append ($env.HOME | path join flutter bin)
  | append /opt/homebrew/bin
  | uniq
)

# For rbenv
source ($nu.config-path | path join .. scripts rbenv.nu)

# For others
$env.config.show_banner = false
