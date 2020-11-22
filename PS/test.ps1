$date = get-date
Get-ChildItem C:\Windows\system32\* |  Select-Object FullName, Extension,@{Name='DaysOld';E={((get-date) - ($_.CreationTime)).days}}
