#!/bin/bash

# Verifica se o QGroundControl está rodando
if ! pgrep -x "QGroundControl" > /dev/null
then
    echo "Iniciando QGroundControl..."
    # Altere o caminho abaixo para o local onde está instalado seu QGroundControl
    QGC_PATH=~/QGroundControl.AppImage
    chmod +x "$QGC_PATH"
    "$QGC_PATH" &  # Executa em background
else
    echo "QGroundControl já está em execução."
fi

# Executa o comando do PX4
make px4_sitl gz_x500
