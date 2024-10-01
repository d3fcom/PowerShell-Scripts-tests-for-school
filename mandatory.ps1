function my-function
{
    Param(
            [Parameter( mandatory=$true )] $name
         )
    "hello $name"
    
}

my-function -name bob
