function Test-ModulePath {
    $VistaPath = "$env:userProfile\documents\WindowsPowerShell\Modules"
    $XPPath = "$env:Userprofile\my documents\WindowsPowerShell\Modules"
    $osVersion = [System.Environment]::OSVersion.Version.Major
    if ($osVersion -ge 6) {
        if (-not (Test-Path -Path $VistaPath)) {
            New-Item -Path $VistaPath -ItemType Directory | Out-Null
            Write-Output "Created directory: $VistaPath"
        }
        else {
            Write-Output "Directory already exists: $VistaPath"
        }
    }
    else {
        if (-not (Test-Path -Path $XPPath)) {
            New-Item -Path $XPPath -ItemType Directory | Out-Null
            Write-Output "Created directory: $XPPath"
        }
        else {
            Write-Output "Directory already exists: $XPPath"
        }
    }
}
# Uncomment the line below to test the function when running as a script
Test-ModulePath
