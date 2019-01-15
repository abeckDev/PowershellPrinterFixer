# GitHub: 
# Author: Alexander Beck - abeckDev (https://github.com/abeckDev)
# Date: 15.01.2019

#---Variables


# Get Printer to reinstall 
$printer = Get-Printer | Out-GridView -Title "Select the printer to fix" -PassThru

$wshell = New-Object -ComObject Wscript.Shell

$confirmation = $wshell.Popup("Do you really want to reinstall the printer: " + $printer.Name + "? `n It may be offline during the process.",0,"Confirmation",1)

if($confirmation -ne 1 )
{
    # Abort
    $wshell.Popup("Aborted!")
    exit
}

Write-Output "Starting to reinstall printer " + $printer.Name

# Verify that this is definitly a newtowrk printer

# Check if printer is pingable and reachable

# Remove old Printer an remember Name or Ask for new Name

# Add Printer again with IP Address and name it like the old one 
 