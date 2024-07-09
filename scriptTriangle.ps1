function calculateTriangle() {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory = $true)]
        [ValidateScript({$_ -gt 0})]
        [float]$Base,
        
        [Parameter(Mandatory = $true)]
        [ValidateScript({$_ -gt 0})]
        [float]$Height
    )
    
    $SurfaceArea = 0.5 * $Base * $Height
    Write-Output "The surface area of the triangle is: $SurfaceArea"
}

calculateTriangle -Base 5 -Height 8
