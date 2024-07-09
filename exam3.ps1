
#To do Create "createDirectories()"---------------------------------------------------------------
#   that wiol take 1 parameter /named "numDirectories" 
#the function will create certain number of directories based on the value of ( INPUT / numdirectories)
#Create thoes directories in the user's Home directorie . 
#called "fun-folder-X" the X is the #numero  to identify the directory "examplee: 1,2,3,4,5,"
# there is Max # of directories = 45
#add / if if funtion is called with INPUT < than 45 = no directories created 
#   +  erorr message saying "Maximum 45 directoriescan be created a at the time ,"
#Last step , make a call to the funtion with a input bigger than 45  and a second call to the funttion with value less - 45 


function createUserDirectories {
    $usersHome = $env:USERPROFILE
    $i = 1
    $intfolders = $numDirectories
    $numDirectories  = Read-Host "Please enter a #number of Directories"
    "the user added " + $numDirectories + " folders"
    $errorMessage = "Maximum 45 directoriescan be created a at the time"
    $Makename = "fun-folder-$i"
    $folderName = $Makename 
    do {
        if($numDirectories > 45){
            $errorMessage
        }
        else {
            New-Item -Path "$usersHome" -Name $folderName -ItemType Directory
            $i++
        }
    }while ($i -le $numDirectories){
        break
    }

    } 
createUserDirectories



function createUserDirectories {
    $usersHome = $env:USERPROFILE
