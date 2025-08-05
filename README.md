# GhostBrew CTF

GhostBrew CTF es una experiencia narrativa de ciberseguridad ofensiva ambientada en una destilería industrial automatizada. El jugador toma el rol de **Ghost**, un operador encubierto contratado para infiltrarse en la red de una planta cervecera, identificar posibles sabotajes y obtener evidencia técnica antes de ejecutar un cierre controlado del sistema.

---

## Objetivo

Simular un entorno realista de ataque a infraestructura OT/SCADA con fases progresivas:

1. **Reconocimiento**
2. **Acceso a redes**
3. **Persistencia**
4. **Exfiltración**
5. **Encubrimiento**
6. *(Opcional)* Sabotaje controlado del proceso de fermentación

---

## Estructura del proyecto

```
ghostbrew-ctf/
├── setup/                      # Scripts de preparación del entorno (Kali)
├── missions/                   # Misiones narrativas por fases
│   ├── mission_01_wifi_access/
│   │   ├── briefing.txt
│   │   └── flag.txt
├── modbus_payloads/           # Scripts para interacción con PLCs
├── implants/                  # Código de persistencia y exfiltración
├── assets/                    # Documentos falsos, planos, PDFs
└── README.md
```

---

## Requisitos

- Kali Linux (última versión)
- Python 3.9+
- `nmap`, `modbus-cli`, `scapy`, `wireshark`, `exiftool`
- Opcional: Wireshark, Flask, herramientas de ingeniería social

---

## Instalación

```bash
git clone https://github.com/s0m3on35/ghostbrew-ctf.git
cd ghostbrew-ctf/setup
chmod +x kali_setup.sh
./kali_setup.sh
```

---

##  Primeros pasos

1. Lee el archivo `missions/mission_01_wifi_access/briefing.txt`
2. Ejecuta el escaneo OSINT inicial
3. Encuentra acceso a la red técnica de la destilería

---

## Estado del desarrollo

- [x] Narrativa principal definida
- [x] Estructura de misiones establecida
- [ ] Misiones 1 a 3 en desarrollo
- [ ] Panel web de estado (opcional)
- [ ] Walkthrough en repositorio separado

---

## Licencia

MIT License (puedes modificar, usar y adaptar con fines educativos o demostrativos)
