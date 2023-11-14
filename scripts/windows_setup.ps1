# Link program configurations to ~/home/ repo.

$Config= "~\home\.config"

$Links = (
    ("$Home\.config\git", "$Config\git"),                                       # Git
    ("$env:LocalAppData\nvim\init.vim", "$Config\nvim\init.vim"),               # Neovim
    ("$env:AppData\Code\User\settings.json", "$Config\Code\User\settings.json") # VS Code
)

for ($i = 0; $i -lt $Links.Length; ++$i) {
    New-Item -ItemType "SymbolicLink" -Path $Links[$i][0] -Target $Links[$i][1] -Force
}
