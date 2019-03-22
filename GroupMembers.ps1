$OutputFile = Read-Host -Prompt "Enter the path and file name for the .csv file eg. C:\users\admin\desktop\filename.csv"   
Out-File -FilePath $OutputFile -InputObject "Group DisplayName, Group Email, Member DisplayName, Member Email" -Encoding UTF8    
$objGroups = Get-msolgroup -All | Sort-object objectid   
Foreach ($objGroup in $objGroups)    
{        
   
 write-host "Processing $($objGroup.DisplayName)..."  
$objGMembers = Get-MsolGroupMember -groupobjectid $($objGroup.objectid)    
  
 write-host "Found $($objGMembers.Count) members..."    
  
 $name = $_.objectid  
$displayname = $_.displayname  
$email = $_.proxyaddresses  
Foreach ($objMember in $objGMembers)    
    {    
   
Out-File -FilePath $OutputFile -InputObject "$($objGroup.DisplayName),$($objGroup.proxyaddresses),$($objMember.DisplayName),$($objMember.EmailAddress)" -Encoding UTF8 -append    
          
write-host "`t$($objGroup.DisplayName),$($objGroup.proxyaddresses),$($objMember.DisplayName),$($objMember.EmailAddress)"   
    }  
   
} 