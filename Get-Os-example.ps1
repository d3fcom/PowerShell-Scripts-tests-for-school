Function Get-osVersion {

    (Get-WmiObject -Class Win32_operatingSystem).version
    

} 

#end 
 
(Get-osVersion).subsrting(0,1)