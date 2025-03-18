#!/bin/bash

# Variables
NEOVIM_VERSION="0.10.0"
INSTALL_DIR="/opt/neovim"
NVCHAD_DIR="$HOME/.config/nvim"

# Instalar dependencias
echo "Instalando dependencias necesarias..."
sudo apt update
sudo apt install -y \
  ninja-build \
  gettext \
  curl \
  unzip \
  gcc \
  g++ \
  make \
  cmake \
  pkg-config \
  libtool \
  libtool-bin \
  autoconf \
  automake \
  cmake \
  g++ \
  pkg-config \
  lua5.1 \
  liblua5.1-dev \
  libuv1-dev \
  libncurses5-dev \
  libgnome2-dev \
  libgnomecanvas2-dev \
  libxxf86vm-dev \
  x11proto-core-dev \
  libx11-dev \
  libxt-dev \
  python3-dev \
  ruby-dev \
  libtool \
  libffi-dev \
  libssl-dev \
  libncurses-dev

# Clonar el repositorio de Neovim
echo "Clonando el repositorio de Neovim..."
cd /opt
sudo git clone https://github.com/neovim/neovim.git $INSTALL_DIR

# Compilar Neovim
echo "Compilando Neovim..."
cd $INSTALL_DIR
sudo make CMAKE_BUILD_TYPE=Release
sudo make install

# Crear un enlace simbólico para 'nvim'
echo "Creando enlace simbólico para nvim..."
sudo ln -s $INSTALL_DIR/build/bin/nvim /usr/local/bin/nvim

# Instalar NvChad
echo "Instalando NvChad..."
git clone https://github.com/NvChad/starter ~/.config/nvim

# Configuración adicional
echo "Configurando NvChad..."
# Ejecuta Neovim para que descargue los plugins usando lazy.nvim
nvim +PackerSync

# Elimina el directorio .git dentro de la configuración de Neovim (esto evita que se actualice el repositorio)
rm -rf ~/.config/nvim/.git

# Instrucción adicional: Ejecutar :MasonInstallAll después de que se descarguen los plugins
echo "Después de ejecutar Neovim, corre el siguiente comando para instalar todos los servidores de lenguaje con Mason:"
echo ":MasonInstallAll"

echo "Neovim instalado correctamente desde código fuente y NvChad configurado."
echo "¡Listo para usar Neovim con NvChad!"
