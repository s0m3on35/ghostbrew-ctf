
#!/bin/bash

# Script de preparación de entorno para GhostBrew CTF
# Ejecutar en Kali Linux (requiere privilegios de root)

echo "[INFO] Instalando herramientas necesarias..."

apt update && apt install -y \
    aircrack-ng \
    net-tools \
    nmap \
    tcpdump \
    exiftool \
    python3-pip \
    wireshark \
    curl \
    git \
    unzip

echo "[INFO] Instalando herramientas Python adicionales..."

pip3 install flask scapy

echo "[INFO] Configurando entorno para red team industrial..."

mkdir -p ~/ghostbrew_ctf/tools
cd ~/ghostbrew_ctf/tools

# Clonar Modbus client CLI (opcional)
git clone https://github.com/sourceperl/mbtget.git
cd mbtget && make && cp mbtget /usr/local/bin/ && cd ..

# Clonar diccionario rockyou (si no está)
if [ ! -f /usr/share/wordlists/rockyou.txt ]; then
  echo "[INFO] Extrayendo rockyou.txt..."
  gzip -d /usr/share/wordlists/rockyou.txt.gz
fi

echo "[INFO] Entorno listo. Revisa el README.md para comenzar."

