
. ($PSScriptRoot | Join-Path -ChildPath "_funcs.ps1")

@{
    "Sync\portable_app\keyhac" = "Sync\develop\repo\keyhac\config.py";
    "Sync\portable_app\keyhac\theme\black" = "Sync\develop\repo\keyhac\theme.ini";
}.GetEnumerator() | ForEach-Object {
    $wd = $env:USERPROFILE | Join-Path -ChildPath $_.Key
    $src = $env:USERPROFILE | Join-Path -ChildPath $_.Value
    Invoke-MySetup -workDir $wd -src $src
}


New-ShortCutOnStartup -path ($env:USERPROFILE | Join-Path -ChildPath "Sync\portable_app\keyhac\keyhac.exe")
