קבוע ללא שינוי
New-Variable -name <name> -Value <value>-option Constant

יש לרשום ללא $
Get-Service <servicename> -OutVariable test  

#בדיקה אם שווה 2 משתנים
#comparison operators

$a eq $b 

# כמה תווים אחרי
$a -like "*test???"
# אותיות בלבד
$a -like "*test???[a-z]"

#אם עושים 1..100 זה מכניס למערף מ1 עד 100

# ניתן להשתמש בשיטה הזאת כדי להוציא את SUB
"$($test.name)"

# להשתמש בנתונים 
'The service {0} is now {1}' -f $s.name, $s.status

