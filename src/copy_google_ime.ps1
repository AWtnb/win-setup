function Copy-GoogleImeDatabase {
    $q = Read-Host "Copy Dropbox files to local. Type COPY to execute"
    if ($q -ceq "COPY") {
        $dest = $env:USERPROFILE | Join-Path -ChildPath "AppData\LocalLow\Google\Google Japanese Input"
        @("config1.db", "user_dictionary.db") | ForEach-Object {
            if (Test-Path ($dest | Join-Path -ChildPath $_)) {
                $check = Read-Host ("local file '{0}' is overwritten. OK? (y/n)" -f $_)
                if ($check -ne "y") { return }
            }
            $cloud = $env:USERPROFILE | Join-Path -ChildPath "Dropbox\develop\app_config\IME_google\db" | Join-Path -ChildPath $_
            "Copying:`n  FROM: {0}`n  TO:   {1}" -f $cloud, $dest
            $confirm = Read-Host "OK? (y/n)"
            if ($confirm -eq "y") {
                Copy-Item -Path $cloud -Destination $dest
            }
        }
    }
}

Copy-GoogleImeDatabase