function my-function
{
    [cmdletbinding()]
    Param()
    Write-Verbose "verbose stream"
}

my-function -Verbose