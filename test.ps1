$User = "apk\jian.huang"
$PWord = ConvertTo-SecureString -String "Password1256" -AsPlainText -Force
$Credential = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $User, $PWord

add-computer -domainname apk.com -Credential $Credential

Install-WindowsFeature –Name Failover-Clustering –IncludeManagementTools

restart-computer -force
