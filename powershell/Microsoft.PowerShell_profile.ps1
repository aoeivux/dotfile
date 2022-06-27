# set PowerShell to UTF-8
[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

# Download scoop 
# irm get.scoop.sh | iex

# Download lazygit 
# scoop bucket add extras 
# scoop install lazygit

#Download Modules
#Install-Module -Name Terminal-Icons -Repository PSGallery -Force
#Install-Module -Name z -Force
#Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipPublishercheck
#Install-Module -Name PSFzf -Scope CurrentUser -Force

# Download oh-my-zsh
#Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://ohmyposh.dev/install.ps1'))

# Terminal-Icons
Import-Module -Name Terminal-Icons

# PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionSource History

# Fzf
Import-Module PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'


# Alias
Set-Alias -Name vim -Value nvim
Set-Alias ll ls
Set-Alias ra lf
Set-Alias g git
Set-Alias grep findstr
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'
Set-Alias lg lazygit

# Utilities
function which ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}
