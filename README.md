# 🛠️ Navaja Suiza Manzano

**Suite de mantenimiento, optimización y herramientas avanzadas de diagnóstico para Windows.**  
Desarrollado para ofrecer máxima velocidad, portabilidad y compatibilidad total con entornos de instalación y recuperación de Windows (`Shift + F10`).

---

## 🚀 Novedades de la Última Versión (`v0.02`)

### 📦 Highlights de la Release v0.02:
* **🎨 Nueva Interfaz Gráfica (GUI Native PowerShell):** Transición a un entorno visual en modo oscuro estilizado sin perder soporte de consola.
* **🛡️ Lanzador Automático (`Lanzador.bat`):** Implementación de bypass transparente de la política de ejecución (`-ExecutionPolicy Bypass`), permitiendo abrir la suite con un doble clic en cualquier sistema.
* **⚡ Mantenimiento de Compatibilidad Offline:** Preserva la capacidad de ser desplegado en consolas de recuperación de Windows (`Shift + F10`).
* **🌍 Arquitectura Multidioma:** Preparado para soporte nativo en 10 idiomas.

---

## 💻 Instalación y Uso

### Método 1: Ejecución Directa (Recomendado)
1. Descarga la última versión o clona el repositorio.
2. Haz doble clic en el archivo **`Lanzador.bat`**.
3. La interfaz gráfica se abrirá automáticamente ignorando cualquier restricción de política de scripts de Windows.

### Método 2: Solución de problemas de PowerShell (Ejecución Manual)
Si prefieres ejecutar directamente el archivo `NavajaSuiza.ps1` desde la consola y Windows bloquea el script con un mensaje en rojo, ejecuta este comando en PowerShell una sola vez:

```powershell
Set-ExecutionPolicy Unrestricted -Scope CurrentUser