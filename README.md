# ParrotPWM

Despliega parcialmente un entorno de hacking usando un solo script.

![Entorno](https://github.com/fl0rkx/parrotospwm_fl0rkxs_edition/blob/main/.assets/Captura%20desde%202025-03-19%2000-06-47.png "Entorno")
![Terminal](https://github.com/fl0rkx/parrotospwm_fl0rkxs_edition/blob/main/.assets/Captura%20desde%202025-03-19%2000-08-41.png "Terminal")
![Tmux](https://github.com/fl0rkx/parrotospwm_fl0rkxs_edition/blob/main/.assets/Captura%20desde%202025-03-19%2000-41-08.png "Tmux")


## Instalación

- Se recomienda el uso de una instalación nueva/limpia de Parrot OS.
- Testado en Parrot Security 6.3 (lorikeet) VirtualBox.

```
git clone https://github.com/fl0rkx/parrotospwm_fl0rkxs_edition.git
cd parrotospwm_fl0rkxs_edition
./parrotpwm.sh (en caso de que no se pueda ejecutar habrá que darle permisos con chmod +x parrotpwm.sh )
sudo reboot (Al terminar la instalación.)
```
- Una vez reiniciado cambia a bspwm en la pantalla de inicio de sesión.
- Los fondos de pantalla salen de  ~/Wallpapers/

## Personalización a tener en cuenta
Para definir nuestra shell ZSH usamos el comando chsh -s $(which zsh) tanto en nuestro usuario como root.
La apariencia de la terminal no viene en el script, unicamente el aspecto del tema para la ZSH.
  
## Comandos

> [!NOTE]
> Con distribución de teclado MacOS, cambia Windows por Command, y Alt por Option.

| Comando                     | Descripción                                                 |
|-----------------------------|-------------------------------------------------------------|
| Windows + 1,2,3,4           | Navega entre escritorios.                                   |
| Windows + Enter             | Abre una nueva terminal.                                    |
| Windows + Enter             | Divide la terminal actual.                                  |
| Windows + Flechas           | Navega entre ventanas abiertas.                             |
| Windows + Tab               | Cambia entre los dos escritorios más recientes.             |
| Windows + + Shift + W       | Cierra la terminal actual.                                  |
| Windows + Alt + R           | Recarga el entorno de escritorio.                           |
| Windows + Alt + Q           | Reiniciar BSPWM.                                            |
| Windows + Alt + Flechas     | Redimensiona la ventana actual.                             |
| Windows + Shift + F         | Abre Firefox.                                               |
| Windows + Shift + B         | Abre Burp Suite.                                            |
| Windows + Shift + 1,2,3,4   | Mueve la ventana actual a otro escritorio.                  |
| Windows + Shift + Flechas   | Mueve la ventana actual.                                    |
| Ctrl + Shift + -+           | Cambia el tamaño del texto en la terminal.                  |
| Ctrl + T                    | Abre un buscador avanzado desde la terminal.                |
| .config/sxhkd/sxhkdrc       | Archivo de configuración de atajos (sxhkd).                 |
| .config/bspwm/bspwmrc       | Archivo de configuración de BSPWM.                          |
| .config/polybar             | Carpeta con temas de Polybar.                               |
| ~/Wallpapers                | Carpeta de fondos de pantalla. Se permite todos los archivos. Para hacerlo más especifico ponemos poner *.png ó *.jpg. |
| target 10.0.0.1             | Selecciona una IP de destino y se muestra en la Polybar.    |
| target reset                | Elimina el objetivo seleccionado.                           |
| tmux                        | Cambia la terminal a tmux.                                  |
| tmux —help                  | Muestra la ayuda de tmux.                                   |
| p10k configure              | Configura el tema de terminal Powerlevel10K.                |
| .zshrc                      | Archivo de configuración de ZSH y alias de comandos.        |
| exit                        | Borrado seguro del historial al salir de la terminal.       |
| rmk (archivo)               | Borrado seguro de un archivo con información sensible.      |

## Paquetes incluídos:

```
Bspwm
Polybar
Oh my zsh + Plugins
Powerlevel10k
Hack Nerd Fonts
JetBrains Font
Python + pip + bpython
Tmux + Oh my tmux
Lsd
Batcat
Scrot
Feh
Rofi
Sxhkd
Picom
```
## Paquetes que puedes instalar manualmente usando un script espcialmente para ello.
```
NVim + NVChad
```
### NeoVim + NvChad
> [!NOTE]
> El script debe de ejecutarse con permisos root. Siempre bajo vuestra responsabilidad.
> Se le da permisos de ejecución y se ejecuta con sudo.

## Créditos
- Autor del fork:      <a href="https://github.com/fl0rkx">fl0rkx</a>
- Autor del proyecto original :  <a href="https://github.com/afsh4ck">afsh4ck</a>
