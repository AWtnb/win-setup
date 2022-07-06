
function Invoke-MySetup {
    param (
        [parameter(Mandatory)][string]$workDir
        ,[parameter(Mandatory)][string]$src
    )
    $workDirPath = (Get-Item $workDir).FullName
    $srcPath = (Get-Item $src).FullName
    if (-not (Test-Path $workDirPath -PathType Container)) {
        "'{0}' does not exist!" -f $workDirPath | Write-Host -ForegroundColor Red
        return
    }
    if (-not (Test-Path $srcPath)) {
        "'{0}' does not exist!" -f $srcPath | Write-Host -ForegroundColor Red
        return
    }

    if ((Test-Path $srcPath -PathType Container)) {
        New-Junction -src $srcPath -junctionLocation $workDirPath
    }
    else {
        if (Test-Admin) {
            New-SymbolicLink -src $srcPath -linkLocation $workDirPath
        }
        else {
            "Need to run as ADMIN to create Symlink '{0}'!" -f $srcPath | Write-Host -ForegroundColor Red
        }
    }
}

function Test-Admin {
    return (([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator))
}

function New-SymbolicLink {
    param (
        [parameter(Mandatory)][string]$src
        ,[string]$linkLocation
    )
    $wd = ($linkLocation.Length -gt 0)? (Get-Item $linkLocation).FullName : (Get-Location).Path
    $linkSrc = Get-Item $src
    $linkPath = $wd | Join-Path -ChildPath $linkSrc.Name
    if (Test-Path $linkPath) {
        "'{0}' already exists!" -f $linkPath | Write-Host -ForegroundColor Red
        $ask = Read-Host "open the directory? (y/n)"
        if ($ask -eq "y") {
            Invoke-Item $wd
        }
        return
    }
    try {
        New-Item -Path $linkPath -Value $linkSrc.FullName -ItemType SymbolicLink -ErrorAction Stop
    }
    catch {
        "failed to make new SymbolicLink '{0}'!" -f $linkPath | Write-Error
    }
}

function New-Junction {
    param (
        [parameter(Mandatory)][string]$src
        ,[string]$junctionLocation
    )
    $wd = ($junctionLocation.Length -gt 0)? (Get-Item $junctionLocation).FullName : (Get-Location).Path
    $linkSrc = Get-Item $src
    $jctPath = $wd | Join-Path -ChildPath $linkSrc.Name
    if (Test-Path $jctPath) {
        "'{0}' already exists!" -f $jctPath | Write-Host -ForegroundColor Red
        $ask = Read-Host "open the directory? (y/n)"
        if ($ask -eq "y") {
            Invoke-Item $wd
        }
        return
    }
    try {
        New-Item -Path $jctPath -Value $linkSrc.FullName -ItemType Junction -ErrorAction Stop
    }
    catch {
        "failed to make new Junction '{0}'!" -f $jctPath | Write-Error
    }
}

function New-ShortCut {
    param (
        [parameter(Mandatory)][string]$pathToJump
        ,[string]$shortcutPlace
    )
    $linkSrc = Get-Item $pathToJump
    $linkName = $linkSrc.BaseName + ".lnk"
    $wd = ($shortcutPlace.Length -gt 0)? (Get-Item $shortcutPlace).FullName : (Get-Location).Path
    $shortcutPath = $wd | Join-Path -ChildPath $linkName
    if (Test-Path $shortcutPath) {
        "'{0}' already exists!" -f $shortcutPath | Write-Host -ForegroundColor Red
        $ask = Read-Host "open the directory? (y/n)"
        if ($ask -eq "y") {
            Invoke-Item $wd
        }
        return
    }
    $wsShell = New-Object -ComObject WScript.Shell
    $shortcut = $WsShell.CreateShortcut($shortcutPath)
    $shortcut.TargetPath = $linkSrc.FullName
    $shortcut.Save()
}

function New-ShortCutOnStartup {
    param (
        [parameter(Mandatory)][string]$path
    )
    $startup = $env:USERPROFILE | Join-Path -ChildPath "AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
    New-ShortCut -pathToJump $path -shortcutPlace $startup
}