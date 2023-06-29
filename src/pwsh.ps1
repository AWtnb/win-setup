. ($PSScriptRoot | Join-Path -ChildPath "_funcs.ps1")

Invoke-MySetup -workDir ($env:USERPROFILE | Join-Path -ChildPath "Documents") -src ($env:USERPROFILE | Join-Path -ChildPath "Sync\develop\repo\PowerShell")

