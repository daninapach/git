#לקבוע משתנה קבוע ללא אפשרות שינוי -option Constant
New-Variable -name <name> -Value <value>-option Constant

#על מנת להעביר את התשובה למשתנה יש לרשום ללא $
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

#להשתמש בכמה טקסטים ללא קטיעה 
@'
'@
# על מנת להשתמש במשתנה יש להשתמש ב ""
@"
"@

#חיפוש של קבצים בלקריאה בלבד או עם סיומת 
Get-ChildItem "C:\windows\System32\z*.dll")
Get-ChildItem "C:\windows\System32\*" -readonly

#חילוק גודל לפי KB, GB, MB 
function get-friendySize{
    param(
    $number
    )
    if([Math]::Round($number/1TB) -ne 0){
        "Size in TB " + [math]::round(($number / 1TB),2)
    }
    elseif ([Math]::Round($number/1GB) -ne 0) {
        "Size in GB " + [math]::round(($number / 1GB),2)
    }
    elseif ([Math]::Round($number/1MB) -ne 0) {
        "Size in MB " + [math]::round(($number / 1MB),2)
    }
    elseif ([Math]::Round($number/1KB) -ne 0) {
        "Size in KB " + [math]::round(($number / 1KB),2)
    }
}


