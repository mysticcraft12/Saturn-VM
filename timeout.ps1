# Caminho para o executável do Google Chrome
$chromePath = "C:\Program Files\Google\Chrome\Application\chrome.exe"

# Abre o Google Chrome no site do Google
Start-Process $chromePath -ArgumentList "https://www.google.com"

# Contagem regressiva
$i = 360
do {
    Write-Host $i
    Sleep 360
    $i--
} while ($i -gt 0)
