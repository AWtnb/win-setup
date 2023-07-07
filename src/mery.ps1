. ($PSScriptRoot | Join-Path -ChildPath "_funcs.ps1")

$dir = $env:USERPROFILE | Join-Path -ChildPath "AppData\Local\Programs\Mery"
@(
    "Sync\develop\app_setting\mery\Mery.ini",
    "Sync\develop\app_setting\mery\Macros"
) | ForEach-Object {
    $src = $env:USERPROFILE | Join-Path -ChildPath $_
    Invoke-MySetup -workDir $dir -src $src
}
