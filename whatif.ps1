function my-function
{
    [cmdletbinding(SupportsShouldProcess=$true)]
    Param($path)
    md $path 
    
}

my-function -path C:\Users\Admin\Desktop\test -whatif
