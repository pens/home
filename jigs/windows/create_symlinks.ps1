# Link program configurations to ~/dotfiles/ repo.

$Config= "$PSScriptRoot\..\.config"

$Links = (
    ("$HOME\.config\git", "$Config\git"),                                       # Git
    ("$env:LocalAppData\nvim\init.vim", "$Config\nvim\init.vim"),               # Neovim
    ($PROFILE.CurrentUserAllHosts, "$Config\powershell\profile.ps1"),           # PowerShell
    ("$env:AppData\Code\User\settings.json", "$Config\Code\User\settings.json") # VS Code
)

for ($i = 0; $i -lt $Links.Length; ++$i) {
    New-Item -ItemType "SymbolicLink" -Path $Links[$i][0] -Target $Links[$i][1] -Force
}
