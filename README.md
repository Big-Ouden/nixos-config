# NixOS Configuration with Home Manager

This project provides a **modular NixOS configuration**, integrating Home Manager for fine-grained user configurations. It is designed to work across **different machine types** (laptop, desktop, VM) with a **declarative and reproducible approach**.

## 📌 **Features**
✔️ **Multi-host NixOS configuration**:
   - 💻 Laptop  
   - 🖥️ Desktop  
   - 🏠 Virtual Machine (VM)  

✔️ **Home Manager** for per-user environment management.  
✔️ **Hyprland** as a lightweight Wayland window manager (optional).  
✔️ **Essential applications & services** pre-configured for each machine.  
✔️ **Flatpak support** for proprietary applications.  
✔️ **Modular & scalable architecture** with structured dependencies.  

---

## 🛠️ **Dependencies**
Before using this project, ensure **Nix is installed with flakes support**:

```sh
# Enable experimental features in Nix
mkdir -p ~/.config/nix
echo 'experimental-features = nix-command flakes' | tee -a ~/.config/nix/nix.conf
```

Then install NixOS and clone this repository:

```sh
git clone https://github.com/Big-Ouden/nixos-config.git
cd nixos-config
```

---

## 🔧 **Building & Deploying the Configuration**
### **1️⃣ Applying the NixOS System Configuration (Host)**
To rebuild your **entire system (host)**, replacing `laptop` with `desktop` or `vm` as needed:

```sh
sudo nixos-rebuild switch --flake .#laptop
```

**What does this do?**  
- Applies **system-wide settings** (kernel, drivers, networking, etc.).
- Configures system-level **services** (Docker, SSH, Flatpak).
- Manages hardware-specific **configurations**.

---

### **2️⃣ Applying the User Configuration (Home Manager)**
To rebuild **only the user environment**, replacing `simon@laptop` with your user and host:

```sh
home-manager switch --flake .#simon@laptop
```

**What does this do?**  
- Configures **user-specific settings** (shell, themes, applications).
- Installs and manages **user-level packages**.
- Applies **window manager & UI tweaks**.

⚠ **System (`nixos-rebuild`) and user (`home-manager switch`) configurations are independent!**  
Changes to one **do not** affect the other.

---

## 🔧 **Automatic Installation Script**
Instead of manually running the above commands, you can use the **provided installation script**:

```sh
chmod +x install.sh
./install.sh <host> <user>
```

For example, to install on a **laptop** for user **simon**:

```sh
./install.sh laptop simon
```

This script:
✔️ **Applies the system configuration (`nixos-rebuild`)**  
✔️ **Applies the user configuration (`home-manager switch`)**  

---

## 📦 **Applications & Services**
This project includes the following essential applications and services:

### **🖥️ System Services**
| Service  | Purpose |
|----------|--------|
| **SSH (`openssh`)** | Enables remote access to the system. |
| **Docker** | Containerized application deployment. |
| **Flatpak** | Installs applications independent of Nix. |
| **QEMU Guest Agent** | Allows a VM to communicate with its host. |

### **💡 Key Applications**
| Category              | Application  | Purpose |
|-----------------------|-------------|---------|
| **Terminal**         | `kitty`      | A fast, feature-rich terminal emulator. |
| **Shell**           | `zsh` + `bash` | Enhanced command-line experience. |
| **Text Editor**     | `vim` / `neovim` | Lightweight editors for development. |
| **Window Manager**  | `Hyprland` | A dynamic Wayland tiling window manager. |
| **Status Bar**      | `Waybar` | Displays system stats and widgets. |
| **Application Launcher** | `rofi` | A lightweight launcher for quick app access. |
| **File Manager**    | `nemo` + `yazi` | Graphical and terminal-based file management. |
| **Web Browser**     | `Firefox` | Secure and customizable browsing experience. |
| **Music Player**    | `audacious` | Lightweight audio player. |
| **Video Player**    | `mpv` | High-performance video playback. |
| **System Monitor**  | `htop` / `btop` | Real-time system resource monitoring. |

---

## 🔗 **Project Structure & Dependencies**
This project is structured into **modular components**:

### **🔹 Core Files**
| File | Purpose |
|------|---------|
| `flake.nix` | Defines the **main configuration** & system builds. |
| `hosts/laptop/default.nix` | Defines **laptop-specific** system settings. |
| `modules/core/default.nix` | Shared **system settings** across all machines. |
| `home-manager/profiles/base.nix` | Shared **user settings** across all profiles. |

### **🖥️ Host Configuration vs. Home Manager**
| Command | Applies to | Modifies |
|---------|-----------|----------|
| `nixos-rebuild switch --flake .#host` | System (root) | Kernel, services, system-wide apps |
| `home-manager switch --flake .#user@host` | User (non-root) | UI, personal apps, shell config |

---

## 📜 **License**
This project is licensed under **MIT**.  
You are free to use, modify, and share it. See the `LICENSE` file for details.

---

## 🤝 **How to Contribute**
### **1️⃣ Fork the Project**
```sh
git clone https://github.com/Big-Ouden/nixos-config.git
cd nixos-config
```

### **2️⃣ Create a New Branch**
```sh
git checkout -b my-new-feature
```

### **3️⃣ Add Your Changes**
```sh
git add .
git commit -m "Added a new feature"
```

### **4️⃣ Push and Open a PR**
```sh
git push origin my-new-feature
```
Then open a Pull Request on GitHub.

---

## 📞 **Contact**
For questions or suggestions, open an **issue** on GitHub or reach out directly.

🚀 **Happy hacking!**
