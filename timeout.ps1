# Caminho para o executável do Google Chrome
$chromePath = "C:\Program Files\Google\Chrome\Application\chrome.exe"

# Abre o Google Chrome no site do Google
Start-Process $chromePath -ArgumentList "https://download1478.mediafire.com/jks4l0rgv20gIZNe7NSkS3zJ_RA0D6iyOonVNxn2ZH2oZBwp6UE97_zcJkPbKBjWEUvA14K8u2AuK5vhT1xTACFhK-SvYo2WR5-sMxpXuZZ7eN3l75W5EReLqkNyi3OxvqSqf_Mv6zGQtCzHtptx0PRhmtYYO9FFKqgyw9eSLDib/7w9a6am4ymk9f4l/ninite.exe"
Start-Sleep -Seconds 10  # Espera por 10 segundos (ajuste conforme necessário)

# Caminho para o arquivo ninite.exe
$ninitePath = "C:\Users\runneradmin\Downloads\ninite.exe"

# Executa o arquivo ninite.exe
Start-Process $ninitePath

# Espera por mais 10 segundos
Start-Sleep -Seconds 10

# Remove todos os arquivos na pasta Downloads
Remove-Item "C:\Users\runneradmin\Downloads\*" -Force -Recurse

# Contagem regressiva
$i = 360
do {
    Write-Host $i
    Sleep 360
    $i--
} while ($i -gt 0)
