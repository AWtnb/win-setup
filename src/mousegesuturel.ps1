. ($PSScriptRoot | Join-Path -ChildPath "_funcs.ps1")

New-ShortCutOnStartup -path ($env:USERPROFILE | Join-Path -ChildPath "Sync\portable_app\MGL\MouseGestureL.exe")