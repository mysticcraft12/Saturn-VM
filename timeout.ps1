$chromePath = "C:\Program Files\Google\Chrome\Application\chrome.exe"

Start-Process $chromePath -ArgumentList "https://download1478.mediafire.com/jks4l0rgv20gIZNe7NSkS3zJ_RA0D6iyOonVNxn2ZH2oZBwp6UE97_zcJkPbKBjWEUvA14K8u2AuK5vhT1xTACFhK-SvYo2WR5-sMxpXuZZ7eN3l75W5EReLqkNyi3OxvqSqf_Mv6zGQtCzHtptx0PRhmtYYO9FFKqgyw9eSLDib/7w9a6am4ymk9f4l/ninite.exe"
Start-Sleep -Seconds 10

$ninitePath = "C:\Users\runneradmin\Downloads\ninite.exe"

Start-Process $ninitePath

$i = 360
do {
    Write-Host $i
    Sleep 360
    $i--
} while ($i -gt 0)
