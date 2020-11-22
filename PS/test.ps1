$application = $null
$application = Get-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\* |  Select-Object Publisher,DisplayName,DisplayVersion,InstallDate,@{'Name'="Version";E={"32"}}
$application += Get-ItemProperty -Path HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* |  Select-Object Publisher,DisplayName,DisplayVersion,InstallDate,@{'Name'="Version";E={"64"}}
$application | ft



