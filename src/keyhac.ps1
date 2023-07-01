
. ($PSScriptRoot | Join-Path -ChildPath "_funcs.ps1")

@{
    "C:\Personal\tools\keyhac" = "repo\keyhac\config.py";
    "C:\Personal\tools\keyhac\theme\black" = "repo\keyhac\theme.ini";
}.GetEnumerator() | ForEach-Object {
    $src = $env:USERPROFILE | Join-Path -ChildPath $_.Value
    Invoke-MySetup -workDir $_.Key -src $src
}


New-ShortCutOnStartup -path "C:\Personal\tools\keyhac\keyhac.exe"
