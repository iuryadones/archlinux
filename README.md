# Install Archlinux 

## Mudar teclado para abnt2

```bash
$ loadkeys br-abnt2
```

## Mudar a lingua da instalação para portugues br

```bash
$ vi ou nano /etc/locale.gen
```

## Procurar e descomentar essas linhas:

```bash
$ pt_BR.UTF-8
$ pt_BR.ISO-8859-1
```

## Executar esses comandos:

```bash
$ locale-gen
$ export LANG=pt_BR.UTF-8
```

## Testa coneçao com a internet

```bash
ping -c 3 www.google.com
```

## Mostra as particoes

```bash
$ fdisk -l
```

> Falto descrever um moi de coisas aki
> Alguém pode me ajudar e cobrar
> Quero que fique legal a parte do fdisk

## Começar o particionamento

```bash
$ fdisk /dev/sda
```

## Formatar as partições

```bash
$ mkfs.ext4 /dev/sda1
$ mkfs.ext4 /dev/sda2
$ mkfs.ext4 /dev/sda3
```

## Formatar a particao swap e ligar

```bash
$ mkswap /dev/sda4
$ swapon /dev/sda4
```

## Ver o layout do particionamento

```bash
$ lsblk /dev/sda
```

## Montar as partições

```bash
$ mount /dev/sda2 /mnt
```

## Criar a pasta (home,boot) e montar a partição (home,boot)

```bash
$ mkdir /mnt/home
$ mkdir /mnt/boot
$ mount /dev/sda1 /mnt/boot
$ mount /dev/sda3 /mnt/home
```

## Instalar o sistema base

```bash
$ pacstrap -i /mnt base base-devel
```

## Gerar o arquivo fstab que decreve as partições

```bash
$ genfstab -U -p /mnt >> /mnt/etc/fstab
```

## Ver o que esta escrito nesse arquivo

```bash
$ cat /mnt/etc/fstab
```

# Configura o `root` ou `/` 

## Logando na instalação para configurar

```bash
$ arch-chroot /mnt /bin/bash
```

## Muda a língua novamente

```bash
# nano /etc/locale.gen
```

## Procurar e descomentar essas linhas:

```bash
# pt_BR.UTF-8
# pt_BR.ISO-8859-1
```bash

## Executar esse comando:

```bash
# locale-gen
```

## Criar o aquirvo de conf de lingua

```bash
# echo LANG=pt_BR.UTF-8 > /etc/locale.conf
# export LANG=pt_BR.UTF-8
```

## Configurar o teclado para que persistam pos reboot

```bash
# nano /etc/vconsole.conf
```

Adiciona essas linhas no arquivo e salvar

```bash
KEYMAP=br-abnt2
```

## Adicionando um hostname

```bash
# nano /etc/hostname
```

## Escreva seu hostname

> <your-hostname>

configurando o hosts

```bash
# nano /etc/hosts
```

escrevendo add o myhostname 

```bash
127.0.0.1    localhost.localdomain    localhost
::1          localhost.localdomain    localhost
127.0.1.1    myhostname.localdomain   myhostname
```

## Fuso horário do America/Cidade

```bash
# ls /usr/share/zoneinfo/America
# ln -s /usr/share/zoneinfo/America/Recife /etc/localtime
```

Sincronizando o relógio do hardware com o do Sis. Op.

```bash
# hwclock --systohc --utc
```

## Comando para saber o nome da sua rede local,cabeada e wifi 

```bash
# ip address
```

Exemplo:

- lo: rede local
- enp#s#: rede cabeada
- wlp#s#: rede wifi

> `#` é qualquer número

## Configurando a rede cabeada

```bash
# systemctl enable dhcpcd.service
```

## Configurando rede wireless

```bash
# pacman -S netcf dialog
```

depois

```bash
# systemctl enable net-auto-wireless.service
```

[###] configurar os repositórios pacman para 32bits e 64bits
# nano /etc/pacman.conf 

[###] descomentar [multilib]
[multilib]
Include = /etc/pacman.d/mirrorlist

[###] sincronizar os repositorios
pacman -Sy

[###] criar senha do root
passwd

[###] criar usuário e definir senha
useradd -m -g users -G wheel,storage,power -s /bin/bash nameUser
passwd nameUser

[###] instalar sudo
pacman -S sudo

[###] editar os propriedades de sudo
[###] descomentar a linha que mostra
# EDITOR=nano visudo
#%wheel ALL=(ALL) ALL -> %wheel ALL=(ALL) ALL

########### Importante caso de erro ao reiniciar #############

[###] baixar e instalar grub
# pacman -S grub
# grub-install --target=i386-pc --recheck /dev/sda

[###] criar o arquivo de configuracao do grub
# grub-mkconfig -o /boot/grub/grub.cfg
--------------------------------------------------------------
[###] caso de erro mount as partições novamente e instale este programa
# pacman -S grub
# grub-install /dev/sda
# grub-mkconfig -o /boot/grub/grub.cfg

##############################################################

[###] Se estiver fazendo dualboot com Windows:
# pacman -S os-prober

[###] Initramfs configurando o linux do /
# mkinitcpio -p linux

[###] Sair do arch-chroot
# exit

[###] Desmontar as particoes
# umount /mnt/home
# umount /mnt/boot
# umount /mnt

[###] Outra forma de desmontar as partições
# umount /mnt/{home,boot,}

[###] Reiniciar
# reboot

#####################################
# COMEÇAR A CONFIGURAR O ARCH LINUX #
#####################################

[###] Conectar o computador a internet
$ dhcpcd
$ ping -c 3 www.google.com

[###] configurar o som
$ sudo pacman -S alsa alsa-utils alsamixer

[###] instalar xorg
$ sudo pacman -S xorg-xinit xorg-server xorg-server-utils xorg-utils

[###] instalar algumas ferramentas drives graficos 2D
$ sudo pacman -S xf86-video-vesa
$ sudo pacman -S mesa mesa-demos 

[###] instalar fonts
$ sudo pacman -S ttf-dejavu

[###] Caso seu mouse e teclados sejam especiais:
$ sudo pacman -S xf86-input-synaptics xf86-input-mouse xf86-input-keyboard

[###] instalar configurações da internet 
$ sudo pacman -S networkmanager networkmanager-vpnc vpnc 
$ sudo pacman -S networkmanager-pptp networkmanager-openconnect 
$ sudo pacman -S network-manager-applet

[###] ativar o gerenciador de rede automaticamente
$ sudo systemctl enable NetworkManager.service
$ sudo systemctl start NetworkManager.service

[###] instalar um firewall simples UFW
$ sudo pacman -S ufw
$ sudo systemctl enable ufw.service

[###]  Saber ver qual a chipset de vídeo do pc 
$ lspci | grep VGA

[###] instalar driver de video
[###] instalar o que for o seu: 
$ sudo pacman -S virtualbox-guest-utils   - para o virtualbox
$ sudo pacman -S nvidia && nvidia-xconfig - para placas nvidia
$ sudo pacman -S xf86-video-ati           - para placas amd-radeon
$ sudo pacman -S xf86-video-intel         - para drivers da intel

[###] Caso esteja no virtualbox
$ sudo pacman -S virtualbox-guest-utils

########## Interface Gráfica ####################
# Uma instalação básica do Gnome no Arch Linux. #
#################################################

$ mkinitcpio -p linux

$ sudo pacman -S gnome gnome-shell gnome-extra

$ sudo systemctl enable gdm

$ sudo pacman -S xdg-user-dirs
$ xdg-user-dirs-update

[###] configurar teclado abnt2 no ambiente X:
$ localectl set-x11-keymap br-abnt2

$ sudo pacman -S screenfetch

$ screenfetch

$ sudo pacman -S gedit gedit-plugins

[###] instalar AUR
$ sudo gedit /etc/pacman.conf

[###] escrever abaixo de [custom]:
[archlinuxfr]
SigLevel = Never
Server = http://repo.archlinux.fr/$arch
[###] Podemos instalar também o [archstrike] e o [blackarch] no repositório

[###] Sincronizando com a base de dados dos repositórios novos
$ sudo pacman -Syy

[###] checar se tem atualizações e atualizar
$ sudo pacman -Syu

[###] Instalando o gerenciador yaourt
$ sudo pacman -S yaourt

[###] Reniciando o sistema e faça um bom uso
$ sudo reboot

[###] Sobre o gerenciador local [yaourt]
$ yaourt -Ss <programa> ### Procurar
$ yaourt -S <programa>  ### Instalar
$ yaourt -Qem           ### Programas que já foram instalados localmente

[###] Sobre o gerenciador global [pacman]
$ sudo pacman -Ss <programa> ### Procurar
$ sudo pacman -S <programa>  ### Instalar
$ sudo pacman -Qem           ### Programas que já foram instalados com [yaourt]

[###]programas a serem instalados
$ sudo pacman -S firefox firefox-i18n-pt-br flashplayer unrar unzip tar gzip bzip2 p7zip alsa-lib alsa-tools alsa-utils alsa-oss pulseaudio-alsa pulseaudio pamixer cmus vlc

$ sudo pacman -S gstreamer0.10 gstreamer0.10-plugins gstreamer0.10-base gstreamer0.10-good gstreamer0.10-python gstreamer0.10-ugly
