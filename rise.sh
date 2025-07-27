#!/bin/bash

xhost +local:docker

PULSE_SOCKET="$XDG_RUNTIME_DIR/pulse/native"
WINEPREFIX_LOCAL="$HOME/.wine_rise"
GAME_DIR="$HOME/Descargas/torrenterino/Rise.of.Nations.Extended.Edition.v1.10/Rise.of.Nations.Extended.Edition.v1.10-LuKe"

if [ ! -f "$GAME_DIR/rise.exe" ]; then
  echo "⚠️  El juego no fue encontrado en $GAME_DIR"
  exit 1
fi

docker run -it --rm \
  --name riseofnations_container \
  --network host \
  -e DISPLAY=$DISPLAY \
  -e PULSE_SERVER=unix:${PULSE_SOCKET} \
  -e WINEPREFIX=/root/.wine \
  -v /tmp/.X11-unix:/tmp/.X11-unix:rw \
  -v "$GAME_DIR":/mnt/game:Z \
  -v "${PULSE_SOCKET}:${PULSE_SOCKET}" \
  -v "$WINEPREFIX_LOCAL":/root/.wine:Z \
  riseofnations \
  bash -c '
    chown -R root:root /root/.wine
    cd /mnt/game
    wine rise.exe
  '
