. ($PSScriptRoot | Join-Path -ChildPath "_funcs.ps1")

Invoke-MySetup -workDir ($env:USERPROFILE | Join-Path -ChildPath "AppData\Local\SumatraPDF") -src ($env:USERPROFILE | Join-Path -ChildPath "Sync\develop\app_setting\sumatraPDF\SumatraPDF-settings.txt")
