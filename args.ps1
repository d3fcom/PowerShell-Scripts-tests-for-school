function my-function {
    param($a, $b)
    $a
    $b
    if($args.count -gt 0){
        $e = "Too many arguments:" + $args.count;
        Write-Error "$e"
    }
}
my-function 1 2 3 4 5 6
