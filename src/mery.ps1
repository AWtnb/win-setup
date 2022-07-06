. ($PSScriptRoot | Join-Path -ChildPath "_funcs.ps1")

$dir = $env:USERPROFILE | Join-Path -ChildPath "AppData\Local\Programs\Mery"
@(
    "Dropbox\develop\app_config\mery\Mery.ini",
    "Dropbox\develop\app_config\mery\Macros"
) | ForEach-Object {
    $src = $env:USERPROFILE | Join-Path -ChildPath $_
    Invoke-MySetup -workDir $dir -src $src
}
