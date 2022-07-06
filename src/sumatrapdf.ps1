. ($PSScriptRoot | Join-Path -ChildPath "_funcs.ps1")

Invoke-MySetup -workDir ($env:USERPROFILE | Join-Path -ChildPath "AppData\Local") -src ($env:USERPROFILE | Join-Path -ChildPath "Dropbox\develop\app_config\sumatraPDF")
