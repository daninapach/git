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
get-friendySize 1125525000000