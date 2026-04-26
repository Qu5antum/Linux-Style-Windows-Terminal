try {
    [Console]::InputEncoding  = [System.Text.Encoding]::UTF8
    [Console]::OutputEncoding = [System.Text.Encoding]::UTF8
    $OutputEncoding = [System.Text.UTF8Encoding]::new($false)
    chcp 65001 > $null
} catch {}

# command to get terminal
function w {

    $logos = @(
        "arch",
        "kali",
        "ubuntu",
        "debian",
        "windows",
        "windows 11"
    )

    $randomLogo = Get-Random $logos

    Clear-Host

    fastfetch --logo $randomLogo `
        -c "$HOME/.config_powershell/fastfetch/config.jsonc"

}

# with custom logo
function w {
    Clear-Host

    fastfetch `
        -c "$HOME/.config_powershell/fastfetch/config.jsonc" `
        --logo "$HOME/.config_powershell/fastfetch/ascii.txt"
}

function prompt {
    $user = $env:USERNAME
    $path = Get-Location

    Write-Host "$user@arch " -NoNewline -ForegroundColor Green
    Write-Host "$path" -NoNewline -ForegroundColor Cyan
    return "`n$ "
}


w # you can change command for clean terminal
