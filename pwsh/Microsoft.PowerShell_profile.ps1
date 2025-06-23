New-Alias v nvim
Set-Alias -Name python3 -Value py
Set-Alias -Name python -Value py

# Define a function for the 'll' command
function Show-EzaListing {
    eza --color=always --git --icons=always --sort=created --reverse --group-directories-first --across
}
Set-Alias -Name ls -Value Show-EzaListing

# Define a function for the 'll' command
function Show-EzaListingLong {
    eza --color=always --git --icons=always --long --tree --level=2 --sort=created --reverse --group-directories-first --across
}
Set-Alias -Name ll -Value Show-EzaListingLong

# New function to override the bat command
function bat {
    param(
        [Parameter(ValueFromRemainingArguments = $true)]
        [string[]]$Arguments
    )
    bat.exe --style=plain @Arguments
}

# oh-my-posh call (make sure toc all the right .omp.json file)
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\blue-owl.omp.json" | Invoke-Expression
