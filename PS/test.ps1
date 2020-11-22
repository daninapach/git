$obj = New-Object -TypeName PSObject
$obj = '' | Select-Object -Property Name

Add-Member -InputObject $obj -MemberType NoteProperty color -Value "Red"