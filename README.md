# All-Group-Members-Office-365

GET A LIST OF ALL USERS FROM ALL GROUPS IN OFFICE 365

We can create many different types of groups in Office 365/Azure. The different types that get created are Distribution Lists, Mail-Enabled Security Groups, Unified Groups (New Office 365 Groups), Security Groups, Dynamic Security Groups etc. I have seen tenants that have hundreds of different types of groups. If we are to get a report of all the members within those groups, we would need to run multiple PowerShell commands, one for each group type.  
Here is a snippet of the list of different types of groups and lists that can be created in the Exchange Admin Center. If you have a lot of these groups, you could either get a list of each group buy playing with the commands above or use the Azure Module to get a list of all MSOL Groups. Get-msolgroup or Get-AzureASMSGroup
 
I have written a script that is useful in getting all groups and members in O365. The script gets a list of all groups in Office 365, and then cycles through each group getting their members. 
If you would just like a list of groups without their members you can download a .csv file from the portal.

Script Execution:

1)	Run PowerShell as Admin and connect to MSOL service by running Connect-MsolService. For details on how to connect to MSOL reference the link: Connect to Office 365 PowerShell: https://docs.microsoft.com/en-us/office365/enterprise/powershell/connect-to-office-365-powershell 
2)	You will first be prompted for a location to save the output file.  
3)	You will get the following results in the output: Group DisplayName, Group Email, Member DisplayName, and Member Email
 
About the Script. (how does it work):

To get a breakdown of the script and find out how the script works feel free to visit my Office 365 blog post on how to Get a list of all users from all groups in Office 365: https://o365inside.com/azure/get-a-list-of-all-users-from-all-groups-in-office-365/ 



