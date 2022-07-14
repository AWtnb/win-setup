
. ($PSScriptRoot | Join-Path -ChildPath "_funcs.ps1")

$tbProf = $env:USERPROFILE | Join-Path -ChildPath "AppData\Roaming\Thunderbird\Profiles" | Get-ChildItem | Sort-Object LastWriteTime | Select-Object -Last 1

@(
    "Dropbox\develop\app_config\Thunderbird\chrome",
    "Dropbox\develop\app_config\Thunderbird\extensions",
    "Dropbox\_yuhikaku\mail_address\abook.sqlite"
) | ForEach-Object {
    $src = $env:USERPROFILE | Join-Path -ChildPath $_
    Invoke-MySetup -workDir $tbProf -src $src
}



