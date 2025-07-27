# ron
Rise of Nations - in Docker

# 🛡️ Rise of Nations en Docker (Wine)

[![Docker](https://img.shields.io/badge/Docker-ready-blue?logo=docker)](https://www.docker.com/)
[![Wine](https://img.shields.io/badge/Wine-6%2B-purple?logo=wine)](https://www.winehq.org/)
[![Ubuntu](https://img.shields.io/badge/Base-Ubuntu%2022.04-orange?logo=ubuntu)](https://hub.docker.com/_/ubuntu)

Este proyecto te permite correr **Rise of Nations: Extended Edition v1.10** de manera aislada usando Docker + Wine, sin ensuciar tu sistema.

> ✅ Ideal para Linux  
> ✅ Soporte para audio (PulseAudio), video (X11), y DirectPlay  
> ✅ Persistencia del prefix de Wine  
> ✅ Sin necesidad de emuladores externos ni Lutris

---

## 🚀 Requisitos

- Docker instalado
- Linux con entorno gráfico (X11)
- PulseAudio
- Juego original (archivos `.exe` instalados o copiados)

---

## 📦 Cómo construir la imagen

```bash
./build_rise.sh


## 🎮 Cómo correr el juego

Editá rise.sh y asegurate de que la ruta del juego esté bien:

GAME_DIR="$HOME/Descargas/torrenterino/Rise.of.Nations.Extended.Edition.v1.10/Rise.of.Nations.Extended.Edition.v1.10-LuKe"


Luego:

./rise.sh


## 📁 Estructura

├── build_rise.sh        # Script para construir la imagen
├── Dockerfile.rise      # Dockerfile personalizado
├── rise.sh              # Script para ejecutar el juego
└── .wine_rise/          # Wine prefix persistente (ignorado por git)

