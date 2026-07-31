# 🧰 Navaja Suiza Manzano - Suite Universal de Mantenimiento y Diagnóstico
### Universal Equipment Diagnostic and Management Suite / 多功能设备诊断与管理套件 / Универсальный комплект диагностики

![Windows](https://img.shields.io/badge/OS-Windows%2010%20%7C%2011-0078D6?style=for-the-badge&logo=windows&logoColor=white)
![Language](https://img.shields.io/badge/Language-Batch%20%7C%20PowerShell-4EAA25?style=for-the-badge)
![Multilanguage](https://img.shields.io/badge/Languages-10%20Supported-FF6F00?style=for-the-badge)
![License](https://img.shields.io/badge/License-MIT-blue?style=for-the-badge)

[ 🇪🇸 Español ] | [ 🇬🇧 English ] | [ 🇫🇷 Français ] | [ 🇩🇪 Deutsch ] | [ 🇷🇺 Русский ] | [ 🇨🇳 中文 ] | [ 🇯🇵 日本語 ] | [ 🇸🇦 العربية ]

---

## 📥 Descargas y Versiones (Releases & Updates)

Puedes obtener la última versión estable de la herramienta de dos formas:

1. **Versión Ejecutable Portable (`.exe`):** Dirígete a la sección de **[Releases](../../releases)** de este repositorio para descargar el archivo ejecutable empaquetado de la última versión disponible.
2. **Versión Código Fuente (`.bat`):** Si prefieres auditar el código o ejecutarlo directamente, descarga el archivo `Navaja Suiza.bat` desde la rama principal.

> 🔄 **Control de Versiones y Actualizaciones:** Las nuevas versiones se publicarán periódicamente en el apartado *Releases*. Se recomienda revisar la página de lanzamientos para disfrutar de nuevas funciones y correcciones.

---

## 🌐 Soporte Multidioma / Multilanguage Support

La herramienta incluye un selector de idioma interactivo al arrancar. Puedes elegir entre **10 idiomas disponibles**:

- 🇪🇸 **Español**
- 🇬🇧 **English**
- 🇫🇷 **Français**
- 🇩🇪 **Deutsch**
- 🇮🇹 **Italiano**
- 🇵🇹 **Português**
- 🇯🇵 **日本語 (Japanese)**
- 🇨🇳 **中文 (Chinese)**
- 🇷🇺 **Русский (Russian)**
- 🇸🇦 **العربية (Arabic)**

**(Nota: También puedes cambiar de idioma en cualquier momento pulsando `99` desde el menú principal).*

---

## ✨ Características Principales

- 🛠️ **Compatible con `Shift + F10` (Offline):** Diseñada para ejecutarse tanto en un Windows operativo como desde el entorno de recuperación/instalación de Windows (WinRE/PE).
- 🔍 **Buscador Avanzado de Duplicados Multi-Formato:** Motor integrado en PowerShell que analiza hashes **SHA256** para localizar duplicados de fotos, vídeos, música, documentos y archivos comprimidos, permitiendo eliminarlos, moverlos a cuarentena o exportar un informe TXT.
- 💾 **Gestión e Inyección de Drivers:** Exportación masiva de controladores del equipo, instalación en lote e inyección offline en imágenes de Windows.
- ⚡ **Despliegue de Software vía WinGet:** Instalación desatendida de programas esenciales (Chrome, 7-Zip, VLC, PDF, etc.) y aplicaciones personalizadas.
- 📊 **Informes Técnicos Detallados:** Generación automática de reportes de hardware (SMART, CPU, RAM, BIOS, número de serie) y salud de batería en HTML.
- 🛡️ **Seguridad y Cuentas:** Gestión rápida de usuarios locales, desbloqueo de cuentas y restablecimiento de contraseñas.

---

## 📋 Menú de Herramientas

| Rama | Funcionalidad Principal |
| :---: | :--- |
| **[ 1 ]** | **Configuración Gráfica** (Paneles de control, red, Windows Update, Bluetooth) |
| **[ 2 ]** | **Licencias y Activación** (Lectura de claves OEM en BIOS y gestión SLMGR) |
| **[ 3 ]** | **Drivers y Controladores** (Exportación, importación masiva e inyección offline) |
| **[ 4 ]** | **Mantenimiento y Limpieza** (Temporales, caché de updates y liberación de espacio) |
| **[ 5 ]** | **Reparación del Sistema** (SFC /scannow, reparación DISM online/offline) |
| **[ 6 ]** | **Discos y Duplicados** (Checkdisk, Diskpart, MBR/EFI y Buscador SHA256) |
| **[ 7 ]** | **Respaldos y Clonación** (Copias de seguridad de perfiles, robocopy y wbadmin) |
| **[ 8 ]** | **Redes e Internet** (IPconfig, vaciado DNS, netstat, ping continuo y perfiles Wi-Fi) |
| **[ 9 ]** | **Consolas MMC** (Administrador de dispositivos, servicios, registro y directivas) |
| **[ 10 ]** | **Seguridad y Cuentas** (Gestión de usuarios, cambio de claves y admin nativo) |
| **[ 11 ]** | **Rendimiento y Procesos** (Listado, cierre forzado por nombre o PID) |
| **[ 12 ]** | **Hardware e Informes** (SMART, CPU, RAM, placa base y reporte técnico en escritorio) |
| **[ 13 ]** | **Despliegue WinGet** (Instalación de paquetes de software básico y por ID) |
| **[ 14 ]** | **Energía y Reinicio** (Apagado programado, informe de batería HTML y salto a UEFI) |
| **[ 15 ]** | **PowerShell Avanzado** (Top RAM, desinstalador bloatware, PSWindowsUpdate, TCP test) |

---

## 🚀 Uso del Código Fuente

1. Descarga el archivo **`Navaja Suiza.bat`**.
2. Haz clic derecho sobre él y selecciona **"Ejecutar como Administrador"**.
3. Selecciona tu idioma numérico en la pantalla inicial y disfruta de la suite.

---

## ⚠️ Nota sobre Falsos Positivos (Antivirus / Windows Defender)

Si utilizas la versión compilada en `.exe`, es posible que algunos antivirus la detecten como una advertencia genérica debido a los comandos avanzados de administración del sistema (`dism`, `sfc`, `diskpart`, `powershell`) y a que el ejecutable no cuenta con una firma digital comercial. 

**Garantía:** El código fuente es 100% abierto y transparente (`.bat`). Puedes inspeccionar cada línea en este repositorio o compilarlo tú mismo si lo prefieres.

---

## 📝 Licencia

Este proyecto se distribuye bajo la licencia **MIT**. ¡Sienta libre de usarlo y mejorarlo!
