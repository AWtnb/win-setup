
. ($PSScriptRoot | Join-Path -ChildPath "_funcs.ps1")

@{
    "Sync\portable_app\cfiler" = "Sync\develop\repo\cfiler\config.py";
    "Sync\portable_app\cfiler\theme\black" = "Sync\develop\repo\cfiler\theme.ini";
}.GetEnumerator() | ForEach-Object {
    $wd = $env:USERPROFILE | Join-Path -ChildPath $_.Key
    $src = $env:USERPROFILE | Join-Path -ChildPath $_.Value
    Invoke-MySetup -workDir $wd -src $src
}
