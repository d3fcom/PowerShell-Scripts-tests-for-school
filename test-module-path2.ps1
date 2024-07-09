<#
.Synopsis
Converts Bytes into the appropriate unit of measure.

.Description
The Get-OptimalSize function converts bytes into the appropriate unit of
measure. It returns a string representation of the number.

.Example
Get-OptimalSize 1025
Converts 1025 bytes to 1.00 KiloBytes

.Example
Get-OptimalSize -sizeInBytes 10099999
Converts 10099999 bytes to 9.63 MegaBytes

.Parameter SizeInBytes
The size in bytes to be converted


#Requires -Version 5.0
#>
Function Get-OptimalSize
{
    [CmdletBinding()]
    param(
        [Parameter(Mandatory = $true, Position = 0, ValueFromPipeline = $true)]
        [int64]
        $sizeInBytes
    )

    Switch ($sizeInBytes)
    {
        {$sizeInBytes -ge 1TB} { "{0:n2}" -f ($sizeInBytes / 1TB) + " TeraBytes"; break }
        {$sizeInBytes -ge 1GB} { "{0:n2}" -f ($sizeInBytes / 1GB) + " GigaBytes"; break }
        {$sizeInBytes -ge 1MB} { "{0:n2}" -f ($sizeInBytes / 1MB) + " MegaBytes"; break }
        {$sizeInBytes -ge 1KB} { "{0:n2}" -f ($sizeInBytes / 1KB) + " KiloBytes"; break }
        Default { "{0:n2}" -f $sizeInBytes + " Bytes" }
    }

    $sizeInBytes = $null
} #end Function Get-OptimalSize


Function Get-ComputerInfo
{
    Param(
        [string]$computer = $env:COMPUTERNAME
    )

    $wmi = Get-WmiObject -Class win32_computersystem -ComputerName $computer
    $pcinfo = New-Object psobject -Property @{
        "host" = $wmi.DNSHostname
        "domain" = $wmi.Domain
        "user" = $wmi.Username
    }

    $pcInfo
} #end function 
Get-ComputerInfo
