# Setting up the the 3 variables they ask for 

$intfolders = 10
$intPad = 0
$i = 1


$strPrefix = "testfolder"

# Creating folders using a do loop


Do {
    # Set If condition  if I is less than 10 
    If ($i -lt 10) {
        # Command when Condition is True
        New-Item -Path "C:\" -Name "$strPrefix$intPad$i" -ItemType Directory
    }
    else {
        # Command when Condition is False
        New-Item -Path "C:\" -Name "$strPrefix$i" -ItemType Directory
    }
    
    # Increment $i by 1
    $i++
}
# Add the Until statement to stop looping
Until ($i -eq $intfolders + 1)
