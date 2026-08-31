# Monodots
Dotfiles pessoais para um rice simples de Hyprland.

## Instalação
> ⚠️ Essa configuração foi feita **apenas para o Arch Linux ou distribuições baseadas em Arch.**

**Para obter a melhor experiência, recomendo instalar o `CachyOS` sem ambiente gráfico ou o `Arch Linux` minimal usando o script `archinstall`. Essas configurações tornam a instalação muito mais fácil, sem a necessidade de muita configuração manual.**

Instale as dependências:

```bash
sudo pacman -S --needed git base-devel
```

Clone o repositório:

```bash
git clone https://github.com/Arch-Pitt/Monodots.git 
cd Monodots
```

Torne o instalador executável e execute-o:

```bash 
chmod +x install.sh  
./install.sh
```

E finalmente, reinicie o sistema:

```bash
sudo reboot
```

## Pós-Instalação
Após a instalação, existem alguns passos manuais para deixar tudo funcionando corretamente:

* **Defina o layout do seu teclado:** Você precisa configurar o layout do teclado no arquivo de configuração do Hyprland para garantir que consiga digitar corretamente.
   * Abra e edite o seguinte arquivo: `~/.config/hypr/modules/input.lua`

* **Configure seus monitores:** Você precisa definir a resolução, a taxa de atualização e o posicionamento dos seus próprios monitores.
   * Abra e edite o seguinte arquivo: `~/.config/hypr/modules/monitors.lua`

* **Torne os scripts customizados executáveis:** Isso é necessário para que o menu de desligamento e o seletor de papéis de parede funcionem.

  ```bash
  chmod +x .scripts/cleaner.sh .scripts/powermenu.sh .scripts/wallpicker.sh
  ```

* **Instale os Drivers de GPU:** Para obter o melhor desempenho e evitar falhas visuais, certifique-se de ter os drivers de vídeo corretos instalados para o seu sistema.

* **Instale o Microcode do Processador:** Para melhorar a estabilidade e corrigir problemas conhecidos de CPU, certifique-se de que as atualizações de microcode corretas para seu processador estejam instaladas.

* **Defina os Temas do GTK e de Ícones:** Aplique o visual de sua preferência usando um aplicativo de configurações do GTK.

## Recursos
* **Kitty**, **Waybar**, **Rofi** e **Swaync** pré-configurados.
* **Fish shell** para um terminal mais rápido.
* Tela de bloqueio com o **Hyprlock**.
* Configuração básica de firewall e rede com **UFW** e **NetworkManager**.
* **Gamemode** para melhor desempenho durante sessões de jogos.
* Script de limpeza (**Cleaner**) personalizado.
* Gerenciador de papéis de parede com o **Wallpicker**.
* Tema GTK **Orchis Grey Dark** e tema de ícones **Papirus** para uma interface limpa.

## Pré-visualização
![Desktop](/previews/desktop.png)
![Rofi](/previews/rofi.png)
![Wallpicker](/previews/wallpicker.png)
![Powermenu](/previews/powermenu.png)
![Swaync](/previews/swaync.png)
![GTK/Terminal](/previews/gtkandterminal.png)

## Atalhos de Teclado
> Modificador principal: `SUPER` (Tecla Windows)

### Geral
| Tecla | Ação |
|-----|--------|
| SUPER + Q | Abrir terminal |
| SUPER + E | Abrir gerenciador de arquivos |
| SUPER + Espaço | Abrir menu de aplicativos |
| SUPER + L | Bloquear a tela |
| SUPER + P | Menu de desligamento |
| SUPER + N | Central de notificações |
| SUPER + H | Alternar exibição da waybar |
| SUPER + SHIFT + W | Seletor de papéis de parede |
| SUPER + SHIFT + S | Captura de tela (região) |
| Printscreen | Captura de tela (tela cheia) |
| Mutar Áudio | Alternar mudo |
| Aumentar Áudio | Aumentar volume em 5% |
| Diminuir Áudio | Diminuir volume em 5% |
| Aumentar Brilho | Aumentar brilho em 5% |
| Diminuir Brilho | Diminuir brilho em 5% |

---

### Gerenciamento de Janelas
| Tecla | Ação |
|-----|--------|
| SUPER + ←/→/↑/↓ | Mover foco |
| SUPER + SHIFT + ←/→/↑/↓ | Mover janela |
| SUPER + J | Alternar layout de divisão (split) |
| SUPER + C | Fechar janela ativa |
| SUPER + V | Alternar modo flutuante |
| SUPER + F | Tela cheia |

---

### Áreas de Trabalho (Workspaces)
| Tecla | Ação |
|-----|--------|
| SUPER + 1-0 | Alternar área de trabalho |
| SUPER + SHIFT + 1-0 | Mover janela para a área de trabalho |
