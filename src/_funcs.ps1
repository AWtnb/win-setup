class PsLinker {
    [string]$srcPath
    [string]$srcName
    [string]$workDir
    [string]$linkPath
    PsLinker([string]$srcPath, [string]$workDir) {
        $src = Get-Item -LiteralPath $srcPath
        $this.srcPath = $src.FullName
        $this.srcName = $src.Name
        $this.workDir = ($workDir.Length -gt 0)? (Get-Item -LiteralPath $workDir).FullName : (Get-Location).Path
        $this.linkPath = $this.workDir | Join-Path -ChildPath $this.srcName
    }

    AskInvoke() {
        "'{0}' already exists on '{1}'!" -f $this.srcName, $this.workDir | Write-Host -ForegroundColor Red
        if ((Read-Host "open the directory? (y/n)") -eq "y") {
            Invoke-Item $this.workDir
        }
    }

    MakeSymbolicLink() {
        $isAdmin = ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)
        if (-not $isAdmin) {
            "Need to run as ADMIN to make symlnk of '{0}'..." -f $this.srcPath | Write-Host -ForegroundColor Red
            return
        }
        if (Test-Path $this.linkPath) {
            $this.AskInvoke()
            return
        }
        try {
            New-Item -Path $this.linkPath -Value $this.srcPath -ItemType SymbolicLink -ErrorAction Stop
        }
        catch {
            "failed to make new SymbolicLink '{0}'!" -f $this.linkPath | Write-Error
        }
    }

    MakeJunction() {
        if (Test-Path $this.linkPath) {
            $this.AskInvoke()
            return
        }
        try {
            New-Item -Path $this.linkPath -Value $this.srcPath -ItemType Junction -ErrorAction Stop
        }
        catch {
            "failed to make new Junction '{0}'!" -f $this.linkPath | Write-Error
        }
    }

    MakeShortcut() {
        $shortcutPath = $this.linkPath + ".lnk"
        if (Test-Path $shortcutPath) {
            $this.AskInvoke()
            return
        }
        $wsShell = New-Object -ComObject WScript.Shell
        $shortcut = $WsShell.CreateShortcut($shortcutPath)
        $shortcut.TargetPath = $this.srcPath
        $shortcut.Save()
    }
}


function Invoke-MySetup {
    param (
        [parameter(Mandatory)][string]$workDir
        ,[parameter(Mandatory)][string]$src
    )
    $workDirPath = (Get-Item -LiteralPath $workDir).FullName
    $srcPath = (Get-Item -LiteralPath $src).FullName
    if (-not (Test-Path $workDirPath -PathType Container)) {
        "'{0}' does not exist!" -f $workDirPath | Write-Host -ForegroundColor Red
        return
    }
    if (-not (Test-Path $srcPath)) {
        "'{0}' does not exist!" -f $srcPath | Write-Host -ForegroundColor Red
        return
    }

    $linker = [PsLinker]::new($srcPath, $workDirPath)
    if ((Test-Path $srcPath -PathType Container)) {
        $linker.MakeJunction()
    }
    else {
        $linker.MakeSymbolicLink()
    }
}

function New-ShortCutOnStartup {
    param (
        [parameter(Mandatory)][string]$path
    )
    $startup = $env:USERPROFILE | Join-Path -ChildPath "AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
    $linker = [PsLinker]::new($path, $startup)
    $linker.MakeShortcut()
}