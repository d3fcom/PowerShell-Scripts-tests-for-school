
#To do Create "createDirectories()" 
#   that wiol take 1 parameter /named "numDirectories" 
#the function will create certain number of directories based on the value of ( INPUT / numdirectories)
#Create thoes directories in the user's Home directorie . 
#called "fun-folder-X" the X is the #numero  to identify the directory "examplee: 1,2,3,4,5,"
# there is Max # of directories = 45
#add / if if funtion is called with INPUT < than 45 = no directories created 
#   +  erorr message saying "Maximum 45 directoriescan be created a at the time ,"
#Last step , make a call to the funtion with a input bigger than 45  and a second call to the funttion with value less - 45 


function createDirectories {
    $numDirectories  = Read-Host "Please enter a #number of Directories"
    $x = $numDirectories
    param(
         [init] $numDirectories
    )
    # assurer that the userss input didnt busted 45
    if ($numDirectories -gt 45) {
        Write-Output "Maximum 45 directories can be created at a time."
        return
    }
    # trouver le home directory 
    $usersHome = $env:USERPROFILE

    for ($i = 1; $i -le $numDirectories; $i++) {
        $folderName = "fun-folder-$i"
        $folderPath = Join-Path -Path $usersHome -ChildPath $folderName
        New-Item -Path $folderPath -ItemType Directory -Force
    }

    Write-Output "$numDirectories directories created successfully."
}


# --=--Call the function with bigger than  45
#createDirectories -numDirectories 50

# ---Call the function with input less than or equale to 45
#createDirectories -numDirectories 30 

createDirectories -numDirectories $numDirectories

#2024 
#exam 


