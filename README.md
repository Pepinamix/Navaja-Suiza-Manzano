# 🧰 Navaja Suiza Manzano - Suite Universal de Mantenimiento y Diagnóstico

![Windows](https://img.shields.io/badge/OS-Windows%2010%20%7C%2011-0078D6?style=for-the-badge&logo=windows&logoColor=white)
![Language](https://img.shields.io/badge/Language-Batch%20%7C%20PowerShell-4EAA25?style=for-the-badge)
![Multilanguage](https://img.shields.io/badge/Languages-10%20Supported-FF6F00?style=for-the-badge)
![License](https://img.shields.io/badge/License-MIT-blue?style=for-the-badge)

**Navaja Suiza Manzano** es una suite de herramientas todo-en-uno diseñada para técnicos de soporte, administradores de sistemas y usuarios avanzados. Permite diagnosticar, reparar, optimizar y gestionar equipos con Windows desde una interfaz de consola ligera, rápida y **completamente nativa** (sin necesidad de instalar software de terceros).

---

## ✨ Características Principales

- 🌐 **Soporte Multi-idioma (10 Idiomas):** Español, Inglés, Francés, Alemán, Italiano, Portugués, Japonés, Chino, Ruso y Árabe.
- 🛠️ **Compatible con `Shift + F10` (Offline):** Diseñada para ejecutarse tanto en un Windows operativo como desde el entorno de recuperación/instalación de Windows (WinRE/PE).
- 🔍 **Buscador Avanzado de Duplicados:** Motor integrado en PowerShell que analiza hashes **SHA256** para localizar y gestionar duplicados reales de fotos, vídeos, música, documentos y archivos comprimidos.
- 💾 **Gestión e Inyección de Drivers:** Exportación masiva de controladores del equipo, instalación en lote e inyección offline en imágenes de Windows.
- ⚡ **Despliegue de Software vía WinGet:** Instalación masiva de programas esenciales (Chrome, 7-Zip, VLC, PDF, etc.) y aplicaciones personalizadas.
- 📊 **Informes Técnicos Detallados:** Generación automática de reportes de hardware (SMART, CPU, RAM, BIOS, número de serie) y salud de batería en HTML.
- 🛡️ **Seguridad y Cuentas:** Gestión rápida de usuarios locales, desbloqueo de cuentas y restablecimiento de contraseñas.

---

## 📋 Menú de Herramientas

| Rama | Funcionalidad | Descripción |
| :---: | :--- | :--- |
| **[ 1 ]** | **Configuración Gráfica** | Accesos directos rápidos a paneles de configuración y red (CPL/URI). |
| **[ 2 ]** | **Licencias y Activación** | Lectura de clave OEM en BIOS, estado detallado y validación. |
| **[ 3 ]** | **Drivers y Controladores** | Rescate masivo, reinstalación e inyección offline (`Shift+F10`). |
| **[ 4 ]** | **Mantenimiento y Limpieza** | Borrado de caché, archivos temporales y optimización de disco. |
| **[ 5 ]** | **Reparación del Sistema** | Escaneo SFC, reparación DISM (Online/Offline) y reset TCP/IP. |
| **[ 6 ]** | **Discos y Duplicados** | Checkdisk, reparación MBR/EFI y buscador de duplicados SHA256. |
| **[ 7 ]** | **Respaldos y Clonación** | Copias de seguridad robocopy espejo e imágenes de sistema. |
| **[ 8 ]** | **Redes e Internet** | Diagnóstico IP, reset DNS, tabla ARP y perfiles Wi-Fi. |
| **[ 9 ]** | **Consolas MMC** | Acceso unificado a DevMgmt, DiskMgmt, Servicios, RegEdit, etc. |
| **[ 10 ]** | **Seguridad y Cuentas** | Gestión de usuarios, reset de claves locales y admin nativo. |
| **[ 11 ]** | **Rendimiento y Procesos** | Monitoreo y cierre forzado de procesos por PID o nombre. |
| **[ 12 ]** | **Hardware e Informes** | Diagnóstico SMART y exportación de informes técnicos. |
| **[ 13 ]** | **Despliegue WinGet** | Instalación desatendida de software y paquetes de programas. |
| **[ 14 ]** | **Energía y Reinicio** | Programador de apagado, reinicio UEFI e informe de batería. |
| **[ 15 ]** | **PowerShell Avanzado** | Top consumo RAM, limpieza de bloatware y test de puertos TCP. |

---

## 🚀 Instalación y Uso

### Opción A: Ejecución Directa (Recomendado)
1. Descarga el archivo de código fuente **`Navaja Suiza.bat`** desde este repositorio.
2. Haz clic derecho sobre el archivo y selecciona **"Ejecutar como Administrador"**.
3. Selecciona tu idioma favorito (`99`) en el menú y comienza a utilizar las herramientas.

### Opción B: Versión Compilada (`.exe`)
Si prefieres la versión portable autoejecutable:
1. Ve a la sección de **[Releases](../../releases)** del repositorio.
2. Descarga el archivo `.zip` de la última versión.
3. Descomprime el ejecutable y ejecútalo como Administrador.

---

## ⚠️ Nota sobre Falsos Positivos (Antivirus / Windows Defender)

Si utilizas la versión compilada en `.exe`, es posible que algunos navegadores o antivirus (como Windows Defender) la detecten como una advertencia genérica (ej. *Heur.AdvFunc* o *Script/Wacatac*). 

**¿Por qué ocurre esto?**
- La herramienta utiliza comandos avanzados de administración del sistema (`dism`, `sfc`, `diskpart`, `wmic`, `powershell`, gestión de usuarios y registro).
- Los ejecutables compilados desde scripts Batch de forma independiente no poseen un certificado digital de pago de Microsoft.

> **Garantía de transparencia:** El código fuente completo está disponible de forma pública en este repositorio (`.bat`). Puedes inspeccionar cada línea de código para verificar su total seguridad o ejecutar directamente el script Batch si prefieres evitar advertencias de tu antivirus.

---

## 🤝 Contribuciones y Sugerencias

¡Las mejoras y sugerencias son bienvenidas! Si tienes ideas para añadir nuevas ramas o mejorar los scripts:
1. Abre un **Issue** para proponer cambios o reportar errores.
2. Haz un **Fork** del repositorio y envía un **Pull Request**.

---

## 📝 Licencia

Este proyecto se distribuye bajo la licencia **MIT**. Puedes usarlo, modificarlo y distribuirlo libremente tanto en entornos personales como profesionales.
