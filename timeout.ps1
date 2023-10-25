# Abre o Google no navegador padrão
Start-Process "https://www.google.com"

# Contagem regressiva
$i = 360
do {
    Write-Host $i
    Sleep 1
    $i--
} while ($i -gt 0)
