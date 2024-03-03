. ($PSScriptRoot | Join-Path -ChildPath "_funcs.ps1")

@(
    "config.xml",
    "init.lua"
) | ForEach-Object {
    $name = $_
    $src = $env:USERPROFILE | Join-Path -ChildPath "Sync\develop\repo\CorvusSKK" | Join-Path -ChildPath $name
    $wd = $env:APPDATA | Join-Path -ChildPath "CorvusSKK"
    Invoke-MySetup -workDir $wd -src $src
}

Invoke-MySetup -workDir ($env:USERPROFILE | Join-Path -ChildPath "Personal\crvskkserv") -src ($env:USERPROFILE | Join-Path -ChildPath "Sync\develop\repo\CorvusSKK\crvskkserv.ini")
