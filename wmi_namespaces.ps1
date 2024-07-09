Function Get-WmiNameSpace {
    Param(
        $namespace = "root",
        $computer = "localhost"
    )

    Get-WmiObject -class __NAMESPACE -computer $computer -namespace $namespace -ErrorAction SilentlyContinue | ForEach-Object {
        $subns = Join-Path -Path $_.__NAMESPACE -ChildPath $_.name
        if ($subns -notmatch 'directory') {
            $subns
        }
        $namespaces += "$subns`r`n"
        Get-WmiNameSpace -namespace $subns -computer $computer
    }
}

# Usage example:
Get-WmiNameSpace
