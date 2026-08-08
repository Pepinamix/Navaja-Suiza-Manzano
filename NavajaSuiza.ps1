# =========================================================================
#  NAVAJA SUIZA MANZANO - Windows Diagnostic & Management Suite (GUIPS)
# =========================================================================
#  Version   3.0 (v0.03 Master)
#  License   MIT
# =========================================================================

# -------------------------------------------------------------------------
# COMPROBACIÓN Y AUTO-ELEVACIÓN A ADMINISTRADOR
# -------------------------------------------------------------------------
$currentPrincipal = New-Object Security.Principal.WindowsPrincipal([Security.Principal.WindowsIdentity]GetCurrent())
if (-not $currentPrincipal.IsInRole([Security.Principal.WindowsBuiltInRole]Administrator)) {
    Write-Host [!] Se requieren privilegios de Administrador. Elevando... -ForegroundColor Yellow
    Start-Process powershell.exe -ArgumentList -NoProfile -ExecutionPolicy Bypass -File `$PSCommandPath` -Verb RunAs
    exit
}

[Console]OutputEncoding = [System.Text.Encoding]UTF8

# -------------------------------------------------------------------------
# SELECCIÓN DE IDIOMA
# -------------------------------------------------------------------------
function Select-Language {
    Clear-Host
    Write-Host ======================================================================= -ForegroundColor Cyan
    Write-Host                 NAVAJA SUIZA MANZANO - MULTILANGUAGE                    -ForegroundColor Cyan
    Write-Host ======================================================================= -ForegroundColor Cyan
    Write-Host   [1] Espanol
    Write-Host   [2] English
    Write-Host   [3] Francais
    Write-Host   [4] Deutsch
    Write-Host   [5] Italiano
    Write-Host   [6] Portugues
    Write-Host   [7] Nihongo (Japones)
    Write-Host   [8] Zhongwen (Chino)
    Write-Host   [9] Russkiy (Ruso)
    Write-Host  [10] Al-Arabiya (Arabe)
    Write-Host ======================================================================= -ForegroundColor Cyan
    
    $lang = Read-Host  Select Language  Selecciona idioma (1-10)
    return $lang
}

$langChoice = Select-Language

# Configuración básica de textos (Español  Multilingüe)
$title = Navaja Suiza Manzano v0.03 - Suite Master PowerShell

# -------------------------------------------------------------------------
# MENÚ PRINCIPAL
# -------------------------------------------------------------------------
function Show-Menu {
    Clear-Host
    Write-Host ======================================================================= -ForegroundColor Green
    Write-Host   $title -ForegroundColor Green
    Write-Host   Desarrollado por Manuel Manzano (Pepinamix) -ForegroundColor Gray
    Write-Host ======================================================================= -ForegroundColor Green
    Write-Host 
    Write-Host   [1] 🧹 Mantenimiento, Limpieza Profunda y Duplicados SHA256
    Write-Host   [2] 🛠️ Reparacion, Salud e Integridad del Sistema (SFC  DISM)
    Write-Host   [3] 🌐 Red, Conectividad, Firewall, DNS y Puertos
    Write-Host   [4] 🚀 Optimizacion de Rendimiento, Servicios y Planes de Energia
    Write-Host   [5] 🔍 Diagnostico de Hardware, Discos S.M.A.R.T. y Telemetria
    Write-Host   [6] 🔑 Claves de Licencias Windows  OEM en BIOS (OA3x)
    Write-Host   [7] 🚗 Gestion, Backup e Inyeccion de Drivers
    Write-Host   [8] 📦 Despliegue de Software via WinGet
    Write-Host   [9] 👤 Seguridad Avanzada, Cuentas de Usuario y Contrasenas
    Write-Host  [10] ⚡ Utilidades Avanzadas de PowerShell y Bloatware
    Write-Host 
    Write-Host   [0] Salir
    Write-Host ======================================================================= -ForegroundColor Green
}

do {
    Show-Menu
    $opt = Read-Host Selecciona una opcion [0-10]

    switch ($opt) {
        1 {
            Clear-Host
            Write-Host [] Ejecutando Mantenimiento y Limpieza... -ForegroundColor Yellow
            Get-ChildItem -Path $envTEMP -Recurse -ErrorAction SilentlyContinue  Remove-Item -Force -Recurse -ErrorAction SilentlyContinue
            Clear-RecycleBin -Force -ErrorAction SilentlyContinue
            Write-Host [✓] Limpieza completada. -ForegroundColor Green
            Pause
        }
        2 {
            Clear-Host
            Write-Host [] Comprobando integridad del sistema... -ForegroundColor Yellow
            sfc scannow
            dism online cleanup-image restorehealth
            Pause
        }
        3 {
            Clear-Host
            Write-Host [] Purgando DNS y testeando red... -ForegroundColor Yellow
            ipconfig flushdns
            Test-NetConnection -ComputerName 8.8.8.8
            Pause
        }
        4 {
            Clear-Host
            Write-Host [] Activando Plan de Maximo Rendimiento... -ForegroundColor Yellow
            powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61
            Pause
        }
        5 {
            Clear-Host
            Write-Host [] Obteniendo resumen de hardware... -ForegroundColor Yellow
            Get-CimInstance Win32_Processor  Select-Object Name, NumberOfCores, MaxClockSpeed  Format-Table -AutoSize
            Get-CimInstance Win32_PhysicalMemory  Select-Object Capacity, Speed, Manufacturer  Format-Table -AutoSize
            Get-CimInstance Win32_DiskDrive  Select-Object Model, Status, Size  Format-Table -AutoSize
            Pause
        }
        6 {
            Clear-Host
            Write-Host [] Extrayendo clave OEM de la BIOS... -ForegroundColor Yellow
            (Get-CimInstance -Query 'select  from SoftwareLicensingService').OA3xOriginalProductKey
            Pause
        }
        7 {
            Clear-Host
            Write-Host [] Exportando controladores del sistema... -ForegroundColor Yellow
            $dest = Read-Host Introduce la ruta de destino (ej CDriversBackup)
            if ($dest) {
                Export-WindowsDriver -Online -Destination $dest
            }
            Pause
        }
        8 {
            Clear-Host
            Write-Host [] Instalando paquetes basicos via WinGet... -ForegroundColor Yellow
            winget install --id Google.Chrome -e --accept-package-agreements --accept-source-agreements
            winget install --id 7zip.7zip -e --accept-package-agreements --accept-source-agreements
            Pause
        }
        9 {
            Clear-Host
            Write-Host [] Cuentas de usuario en el equipo -ForegroundColor Yellow
            Get-LocalUser  Format-Table Name, Enabled, LastLogon
            Pause
        }
        10 {
            Clear-Host
            Write-Host [] TOP 10 Procesos que consumen mas RAM -ForegroundColor Yellow
            Get-Process  Sort-Object WorkingSet64 -Descending  Select-Object -First 10 Name, @{Name='RAM (MB)'; Expression={[math]round($_.WorkingSet64  1MB, 2)}}  Format-Table -AutoSize
            Pause
        }
    }
} while ($opt -ne 0)