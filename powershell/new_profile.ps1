# set PowerShell to UTF-8
[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding
# pre...
# Install-Module -Name Terminal-Icons -Repository PSGallery -Force
Import-Module -Name Terminal-Icons

#Set-Alias -Name vim -Value nvim
Set-Alias ll ls
Set-Alias ra lf
Set-Alias g git
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'
Set-Alias lg lazygit
Set-Alias e explorer.exe

function which ($command) {
    if (-not [string]::IsNullOrEmpty($command)) {
        $cmdPath = Get-Command -Name $command -ErrorAction SilentlyContinue |
                   Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue

        if (-not [string]::IsNullOrEmpty($cmdPath)) {
            return $cmdPath
        } else {
            Write-Host "Command '$command' not found."
        }
    } else {
        Write-Host "Please provide a valid command."
    }
}


# proxy_on.ps1

function Set-ProxyOn {
    $env:HTTP_PROXY = "http://127.0.0.1:7890"
    $env:HTTPS_PROXY = "http://127.0.0.1:7890"
    $env:ALL_PROXY = "socks5://127.0.0.1:7890"
    Write-Host "Proxy set to http://127.0.0.1:7890 for HTTP and HTTPS, and socks5://127.0.0.1:7890 for all."
}

Set-Alias proxy_on Set-ProxyOn

# proxy_off.ps1

function Set-ProxyOff {
    [System.Environment]::SetEnvironmentVariable("HTTP_PROXY", $null, [System.EnvironmentVariableTarget]::Process)
    [System.Environment]::SetEnvironmentVariable("HTTPS_PROXY", $null, [System.EnvironmentVariableTarget]::Process)
    [System.Environment]::SetEnvironmentVariable("ALL_PROXY", $null, [System.EnvironmentVariableTarget]::Process)
    Write-Host "Proxy settings removed."
}

Set-Alias proxy_off Set-ProxyOff
