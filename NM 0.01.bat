::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFD5MXAGGAE+1EbsQ5+n//NaOoUITW90+aJ+V07eBQA==
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdFa5
::cxAkpRVqdFKZSjk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFD5MXAGGAE+/Fb4I5/jHweuRo0ccd88bRN+Vi/qLOOVz
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
setlocal Enabledelayedexpansion

:: =========================================================================
:: SELECCION DE IDIOMA / LANGUAGE SELECTION
:: =========================================================================
:MENU_IDIOMA
cls
color 0B
echo =======================================================================
echo                 NAVAJA SUIZA MANZANO - MULTILANGUAGE
echo =======================================================================
echo   [1] Espanol
echo   [2] English
echo   [3] Francais
echo   [4] Deutsch
echo   [5] Italiano
echo   [6] Portugues
echo   [7] Nihongo (Japones)
echo   [8] Zhongwen (Chino)
echo   [9] Russkiy (Ruso)
echo  [10] Al-Arabiya (Arabe)
echo =======================================================================
set "lang="
set /p lang="> Select Language / Selecciona idioma (1-10): "

if "%lang%"=="1" goto LANG_ES
if "%lang%"=="2" goto LANG_EN
if "%lang%"=="3" goto LANG_FR
if "%lang%"=="4" goto LANG_DE
if "%lang%"=="5" goto LANG_IT
if "%lang%"=="6" goto LANG_PT
if "%lang%"=="7" goto LANG_JA
if "%lang%"=="8" goto LANG_ZH
if "%lang%"=="9" goto LANG_RU
if "%lang%"=="10" goto LANG_AR
goto MENU_IDIOMA

:: -------------------------------------------------------------------------
:: ASIGNACION DE VARIABLES DE TEXTO SEGUN IDIOMA (INCLUYENDO DUP EXTENDIDO)
:: -------------------------------------------------------------------------
:LANG_ES
set "T_TITLE=Navaja Suiza Manzano Version"
set "T_SUITE=SUITE UNIVERSAL DE DIAGNOSTICO Y GESTION DE EQUIPOS"
set "T_SHIFT=(Compatible con Shift + F10)"
set "T_EXIT_SCRIPT=Salir / Cerrar Script"
set "T_SELECT=> Selecciona una rama (0-15): "
set "T_BACK=0. Volver al Menu Principal"
set "T_SEL_OP=> Selecciona una opcion: "

set "T_SUB1=Accesos Rapidos a Paneles de Configuracion Graficos (CMD)"
set "T_SUB2=Licencias Windows, Clave en BIOS / OEM y Estado de Activacion (CMD)"
set "T_SUB3=Gestion, Backup e Inyeccion de Drivers (CMD)"
set "T_SUB4=Mantenimiento, Limpieza y Liberacion de Espacio (CMD)"
set "T_SUB5=Reparacion de Sistema, Archivos y Registro (CMD)"
set "T_SUB6=Gestion de Discos, UEFI/GPT y Buscador de Duplicados (CMD/PS)"
set "T_SUB7=Recuperacion, Copias de Seguridad y Clonacion (CMD)"
set "T_SUB8=Redes, Conexiones, Puertos Abiertos, Ping y Reset TCP/IP (CMD)"
set "T_SUB9=Consolas de Administracion y Herramientas del Sistema (CMD)"
set "T_SUB10=Seguridad Avanzada, Cuentas de Usuario y Reset de Contrasenas (CMD)"
set "T_SUB11=Rendimiento, Procesos, Memoria y Cierre Forzado (CMD)"
set "T_SUB12=Informacion de Hardware, Salud SMART SSD/HDD e Informe Tecnico (CMD)"
set "T_SUB13=Despliegue de Software e Instalacion Masiva via WinGet (CMD)"
set "T_SUB14=Control de Energia, Apagado y Temporizadores (CMD)"
set "T_SUB15=Utilidades Avanzadas de PowerShell (Copiar / Ejecutar)"

:: Sub 6 Duplicados
set "DUP_TITLE=BUSCADOR AVANZADO DE ARCHIVOS DUPLICADOS (SHA256)"
set "DUP_PATH=> Introduce la ruta a analizar (ej. C:\ o F:\): "
set "DUP_OPT1=Fotos (*.jpg, *.png, *.webp, *.raw...)"
set "DUP_OPT2=Videos (*.mp4, *.mkv, *.avi, *.mov...)"
set "DUP_OPT3=Audio / Musica (*.mp3, *.flac, *.wav, *.aac...)"
set "DUP_OPT4=Documentos (*.pdf, *.docx, *.xlsx, *.txt...)"
set "DUP_OPT5=Comprimidos / Software (*.zip, *.rar, *.7z, *.exe, *.msi...)"
set "DUP_OPT6=BUSQUEDA GLOBAL DE TODOS LOS FORMATOS (*.*)"
set "DUP_SEL=> Selecciona tipo de archivo (1-6): "
set "DUP_ACTION=Que deseas hacer con las copias duplicadas?"
set "DUP_ACT1=1. Eliminar duplicados automaticamente"
set "DUP_ACT2=2. Mover duplicados a una carpeta de cuarentena/resguardo"
set "DUP_ACT3=3. Exportar lista de duplicados a TXT (Solo informe)"
set "DUP_ACT_SEL=> Selecciona accion (1-3): "

:: [Resto de textos Submenus 1 al 15 en Español]
set "S1_1=Abrir Configuracion General del Sistema (CMD)"
set "S1_2=Abrir Red e Internet / Wi-Fi (CMD)"
set "S1_3=Abrir Windows Update / Actualizaciones (CMD)"
set "S1_4=Abrir Bluetooth y Dispositivos (CMD)"
set "S1_5=Abrir Cuentas de Usuario (CMD)"
set "S1_6=Abrir Panel de Control Clasico (CMD)"
set "S1_7=Abrir Conexiones de Red Clasicas (CMD)"
set "S1_8=Abrir Programas y Caracteristicas (CMD)"

set "S2_1=Leer Clave de Licencia grabada en BIOS / Placa Base (OEM) (CMD)"
set "S2_2=Estado de activacion detallado en pantalla (CMD/VBS)"
set "S2_3=Comprobar fecha de expiracion de la licencia (CMD/VBS)"
set "S2_4=Cambiar / Instalar nueva clave de producto (CMD/VBS)"
set "S2_5=Forzar activacion por Internet (CMD/VBS)"

set "S3_1=EXPORTAR/Rescatar TODOS los controladores del equipo a carpeta (CMD)"
set "S3_2=IMPORTAR/Instalar masivamente controladores rescatados (.inf) (CMD)"
set "S3_3=INYECTAR DRIVERS OFFLINE a Windows en Shift + F10 (CMD)"
set "S3_4=Iniciar Servicios de Red por Cable en Shift + F10 (CMD)"
set "S3_5=Listar controladores de terceros instalados en la imagen (CMD)"
set "S3_6=Abrir Administrador de Dispositivos grafico (CMD)"

set "S4_1=Vaciar archivos temporales (CMD)"
set "S4_2=Limpiar descargas de Windows Update (CMD)"
set "S4_3=Ejecutar el Limpiador de Disco oficial (CMD)"
set "S4_4=Desactivar hibernacion y liberar espacio (CMD)"

set "S5_1=Escaneo y reparacion de archivos de sistema (CMD)"
set "S5_2=Reparar imagen de Windows online (CMD)"
set "S5_3=Reparar imagen de Windows offline en Shift + F10 (CMD)"
set "S5_4=Restaurar Copia de Seguridad del Registro (CMD)"
set "S5_5=Restablecer componentes de Red (CMD)"

set "S6_1=Escaneo de errores de archivo en disco (CMD)"
set "S6_2=Escaneo profundo y reparacion de sectores defectuosos (CMD)"
set "S6_3=BUSCADOR AVANZADO DE DUPLICADOS (Multi-Formato / Acciones)"
set "S6_4=Abrir Diskpart para particionado de discos (CMD)"
set "S6_5=Reconstruir sector de arranque MBR (CMD)"
set "S6_6=Reconstruir tienda de arranque BCD (CMD)"
set "S6_7=Reconstruir particion EFI / Arranque UEFI (CMD)"
set "S6_8=Listar discos y unidades montadas (CMD)"

set "S7_1=Respaldar carpeta C:\Users a disco externo (CMD)"
set "S7_2=Copia incremental de Documentos e Imagenes (CMD)"
set "S7_3=Clonacion Espejo Completa entre carpetas o discos (CMD)"
set "S7_4=Crear Imagen de Respaldo del Sistema completo (CMD)"

set "S8_1=Ver IP y datos completos de adaptadores de red (CMD)"
set "S8_2=Vaciar la cache de resolucion DNS (CMD)"
set "S8_3=Renovar asignacion de direccion IP (CMD)"
set "S8_4=Ver conexiones activas y puertos en uso (CMD)"
set "S8_5=Test de Ping continuo a Google (CMD)"
set "S8_6=Ver tabla ARP y direcciones MAC de la red local (CMD)"
set "S8_7=Ver perfiles de redes Wi-Fi guardadas en el equipo (CMD)"

set "S9_1=Administrador de Dispositivos (CMD)"
set "S9_2=Administracion de Equipos (CMD)"
set "S9_3=Administracion de Discos (CMD)"
set "S9_4=Servicios de Windows (CMD)"
set "S9_5=Visor de Eventos de Windows (CMD)"
set "S9_6=Editor del Registro de Windows (CMD)"
set "S9_7=Monitor de Recursos (CMD)"
set "S9_8=Editor de Directivas de Grupo Local (CMD)"

set "S10_1=Listar todas las cuentas de usuario de este equipo (CMD)"
set "S10_2=Cambiar contrasena de cuenta local sin saber la actual (CMD)"
set "S10_3=Desbloquear una cuenta de usuario (CMD)"
set "S10_4=Habilitar cuenta oculta de Administrador nativo (CMD)"
set "S10_5=Crear nuevo usuario Local Administrador (CMD)"
set "S10_6=Eliminar un usuario del sistema (CMD)"

set "S11_1=Listar todos los procesos activos en memoria (CMD)"
set "S11_2=Cerrar un proceso por su nombre (CMD)"
set "S11_3=Cerrar un proceso por su numero PID (CMD)"

set "S12_1=Estado de Salud SMART de Discos (CMD)"
set "S12_2=GENERAR INFORME TECNICO DEL EQUIPO en Escritorio (CMD)"
set "S12_3=Detalles del Procesador CPU (CMD)"
set "S12_4=Detalles de Memoria RAM instalada (CMD)"
set "S12_5=Detalles de Placa Base y BIOS (CMD)"
set "S12_6=Numero de serie del equipo (CMD)"
set "S12_7=Generar informe MSINFO32 completo (CMD)"

set "S13_1=Instalar Suite Basica via WinGet: Chrome, 7Zip, VLC, PDF (CMD)"
set "S13_2=Instalar programa especifico introduciendo su ID de WinGet (CMD)"

set "S14_1=Programar apagado del equipo en segundos (CMD)"
set "S14_2=Cancelar apagado programado (CMD)"
set "S14_3=Generar informe detallado de salud de Bateria en HTML (CMD)"
set "S14_4=Reiniciar el sistema inmediatamente (CMD)"
set "S14_5=Reiniciar directamente a la pantalla UEFI / BIOS (CMD)"

set "S15_1=Ver TOP 10 Procesos consumiendo mas RAM"
set "S15_2=Desinstalador masivo de Bloatware preinstalado"
set "S15_3=Buscar e instalar controladores pendientes via Windows Update"
set "S15_4=Probar conectividad a un Puerto TCP especifico"
set "S15_5=Vaciar Papelera de Reciclaje por PowerShell"
goto MENU_PRINCIPAL


:LANG_EN
set "T_TITLE=Swiss Army Knife Manzano Version"
set "T_SUITE=UNIVERSAL EQUIPMENT DIAGNOSTIC AND MANAGEMENT SUITE"
set "T_SHIFT=(Compatible with Shift + F10)"
set "T_EXIT_SCRIPT=Exit / Close Script"
set "T_SELECT=> Select a branch (0-15): "
set "T_BACK=0. Back to Main Menu"
set "T_SEL_OP=> Select an option: "

set "T_SUB1=Quick Access to Graphic Configuration Panels (CMD)"
set "T_SUB2=Windows Licenses, BIOS/OEM Key & Activation Status (CMD)"
set "T_SUB3=Driver Management, Backup & Injection (CMD)"
set "T_SUB4=Maintenance, Cleanup & Space Release (CMD)"
set "T_SUB5=System, File & Registry Repair (CMD)"
set "T_SUB6=Disk Management, UEFI/GPT & Duplicate Finder (CMD/PS)"
set "T_SUB7=Recovery, Backups & Cloning (CMD)"
set "T_SUB8=Networks, Connections, Open Ports, Ping & TCP/IP Reset (CMD)"
set "T_SUB9=Admin Consoles & System Tools (CMD)"
set "T_SUB10=Advanced Security, User Accounts & Password Reset (CMD)"
set "T_SUB11=Performance, Processes, Memory & Forced Termination (CMD)"
set "T_SUB12=Hardware Info, SMART SSD/HDD Health & Tech Report (CMD)"
set "T_SUB13=Software Deployment & Mass Installation via WinGet (CMD)"
set "T_SUB14=Power Control, Shutdown & Timers (CMD)"
set "T_SUB15=Advanced PowerShell Utilities (Copy / Run)"

set "DUP_TITLE=ADVANCED DUPLICATE FILE FINDER (SHA256)"
set "DUP_PATH=> Path to scan (e.g. C:\ or F:\): "
set "DUP_OPT1=Photos (*.jpg, *.png, *.webp, *.raw...)"
set "DUP_OPT2=Videos (*.mp4, *.mkv, *.avi, *.mov...)"
set "DUP_OPT3=Audio / Music (*.mp3, *.flac, *.wav, *.aac...)"
set "DUP_OPT4=Documents (*.pdf, *.docx, *.xlsx, *.txt...)"
set "DUP_OPT5=Archives / Software (*.zip, *.rar, *.7z, *.exe, *.msi...)"
set "DUP_OPT6=GLOBAL SEARCH ALL FORMATS (*.*)"
set "DUP_SEL=> Select file type (1-6): "
set "DUP_ACTION=What do you want to do with duplicate files?"
set "DUP_ACT1=1. Delete duplicates automatically"
set "DUP_ACT2=2. Move duplicates to a quarantine backup folder"
set "DUP_ACT3=3. Export duplicate list to TXT (Report only)"
set "DUP_ACT_SEL=> Select action (1-3): "

set "S1_1=Open General System Configuration (CMD)"
set "S1_2=Open Network & Internet / Wi-Fi (CMD)"
set "S1_3=Open Windows Update / Updates (CMD)"
set "S1_4=Open Bluetooth & Devices (CMD)"
set "S1_5=Open User Accounts (CMD)"
set "S1_6=Open Classic Control Panel (CMD)"
set "S1_7=Open Classic Network Connections (CMD)"
set "S1_8=Open Programs and Features (CMD)"

set "S2_1=Read License Key stored in BIOS / Motherboard (OEM) (CMD)"
set "S2_2=Detailed activation status on screen (CMD/VBS)"
set "S2_3=Check license expiration date (CMD/VBS)"
set "S2_4=Change / Install new product key (CMD/VBS)"
set "S2_5=Force online activation (CMD/VBS)"

set "S3_1=EXPORT/Rescue ALL drivers from the equipment to a folder (CMD)"
set "S3_2=IMPORT/Mass install rescued drivers (.inf) (CMD)"
set "S3_3=INJECT OFFLINE DRIVERS to Windows in Shift + F10 (CMD)"
set "S3_4=Start Wired Network Services in Shift + F10 (CMD)"
set "S3_5=List third-party drivers installed in the image (CMD)"
set "S3_6=Open Graphic Device Manager (CMD)"

set "S4_1=Empty temporary files (CMD)"
set "S4_2=Clean Windows Update downloads (CMD)"
set "S4_3=Run official Disk Cleanup (CMD)"
set "S4_4=Disable hibernation and release space (CMD)"

set "S5_1=Scan and repair system files (CMD)"
set "S5_2=Repair Windows image online (CMD)"
set "S5_3=Repair Windows image offline in Shift + F10 (CMD)"
set "S5_4=Restore Registry Backup (CMD)"
set "S5_5=Reset Network components (CMD)"

set "S6_1=Scan for file errors on disk (CMD)"
set "S6_2=Deep scan and repair bad sectors (CMD)"
set "S6_3=ADVANCED DUPLICATE FINDER (Multi-Format / Actions)"
set "S6_4=Open Diskpart for disk partitioning (CMD)"
set "S6_5=Rebuild MBR boot sector (CMD)"
set "S6_6=Rebuild BCD boot store (CMD)"
set "S6_7=Rebuild EFI partition / UEFI Boot (CMD)"
set "S6_8=List mounted disks and drives (CMD)"

set "S7_1=Backup C:\Users folder to external drive (CMD)"
set "S7_2=Incremental copy of Documents and Pictures (CMD)"
set "S7_3=Complete Mirror Cloning between folders or disks (CMD)"
set "S7_4=Create Full System Backup Image (CMD)"

set "S8_1=View IP and full network adapter details (CMD)"
set "S8_2=Flush DNS resolution cache (CMD)"
set "S8_3=Renew IP address assignment (CMD)"
set "S8_4=View active connections and ports in use (CMD)"
set "S8_5=Continuous Ping test to Google (CMD)"
set "S8_6=View ARP table and local network MAC addresses (CMD)"
set "S8_7=View saved Wi-Fi network profiles on the PC (CMD)"

set "S9_1=Device Manager (CMD)"
set "S9_2=Computer Management (CMD)"
set "S9_3=Disk Management (CMD)"
set "S9_4=Windows Services (CMD)"
set "S9_5=Windows Event Viewer (CMD)"
set "S9_6=Windows Registry Editor (CMD)"
set "S9_7=Resource Monitor (CMD)"
set "S9_8=Local Group Policy Editor (CMD)"

set "S10_1=List all user accounts on this PC (CMD)"
set "S10_2=Change local account password without knowing current one (CMD)"
set "S10_3=Unlock a user account (CMD)"
set "S10_4=Enable hidden native Administrator account (CMD)"
set "S10_5=Create new local Administrator user (CMD)"
set "S10_6=Delete a system user (CMD)"

set "S11_1=List all active processes in memory (CMD)"
set "S11_2=Close a process by its name (CMD)"
set "S11_3=Close a process by its PID number (CMD)"

set "S12_1=SMART Disk Health Status (CMD)"
set "S12_2=GENERATE EQUIPMENT TECH REPORT on Desktop (CMD)"
set "S12_3=CPU Processor Details (CMD)"
set "S12_4=Installed RAM Memory Details (CMD)"
set "S12_5=Motherboard & BIOS Details (CMD)"
set "S12_6=Equipment Serial Number (CMD)"
set "S12_7=Generate complete MSINFO32 report (CMD)"

set "S13_1=Install Basic Suite via WinGet: Chrome, 7Zip, VLC, PDF (CMD)"
set "S13_2=Install specific program by entering its WinGet ID (CMD)"

set "S14_1=Schedule PC shutdown in seconds (CMD)"
set "S14_2=Cancel scheduled shutdown (CMD)"
set "S14_3=Generate detailed Battery Health HTML report (CMD)"
set "S14_4=Restart system immediately (CMD)"
set "S14_5=Restart directly to UEFI / BIOS screen (CMD)"

set "S15_1=View TOP 10 RAM consuming processes"
set "S15_2=Mass uninstaller for preinstalled Bloatware"
set "S15_3=Search and install pending drivers via Windows Update"
set "S15_4=Test connectivity to a specific TCP Port"
set "S15_5=Empty Recycle Bin via PowerShell"
goto MENU_PRINCIPAL


:LANG_FR
set "T_TITLE=Couteau Suisse Manzano Version"
set "T_SUITE=SUITE UNIVERSELLE DE MAINTENANCE ET DIAGNOSTIC"
set "T_SHIFT=(Compatible avec Shift + F10)"
set "T_EXIT_SCRIPT=Quitter / Fermer le script"
set "T_SELECT=> Selectionnez une branche (0-15) : "
set "T_BACK=0. Retour au Menu Principal"
set "T_SEL_OP=> Selectionnez une option : "

set "T_SUB1=Acces rapide aux panneaux de configuration graphiques (CMD)"
set "T_SUB2=Licences Windows, cle BIOS/OEM et etat d'activation (CMD)"
set "T_SUB3=Gestion, sauvegarde et injection de pilotes (CMD)"
set "T_SUB4=Maintenance, nettoyage et liberation d'espace (CMD)"
set "T_SUB5=Reparation du systeme, des fichiers et du registre (CMD)"
set "T_SUB6=Gestion des disques, UEFI/GPT et recherche de doublons (CMD/PS)"
set "T_SUB7=Recuperation, sauvegardes et clonage (CMD)"
set "T_SUB8=Reseaux, connexions, ports ouverts, ping et reset TCP/IP (CMD)"
set "T_SUB9=Consoles d'administration et outils systeme (CMD)"
set "T_SUB10=Securite avancee, comptes utilisateurs et reinitialisation (CMD)"
set "T_SUB11=Performances, processus, memoire et fermeture forcee (CMD)"
set "T_SUB12=Informations materielles, sante SMART et rapport technique (CMD)"
set "T_SUB13=Deploiement de logiciels et installation en masse via WinGet (CMD)"
set "T_SUB14=Controle de l'alimentation, arret et minuteries (CMD)"
set "T_SUB15=Utilitaires PowerShell avances (Copier / Executer)"

set "DUP_TITLE=RECHERCHE AVANCEE DE DOUBLONS (SHA256)"
set "DUP_PATH=> Chemin a analyser (ex. C:\ ou F:\): "
set "DUP_OPT1=Photos (*.jpg, *.png, *.webp, *.raw...)"
set "DUP_OPT2=Videos (*.mp4, *.mkv, *.avi, *.mov...)"
set "DUP_OPT3=Audio / Musique (*.mp3, *.flac, *.wav, *.aac...)"
set "DUP_OPT4=Documents (*.pdf, *.docx, *.xlsx, *.txt...)"
set "DUP_OPT5=Archives / Logiciels (*.zip, *.rar, *.7z, *.exe, *.msi...)"
set "DUP_OPT6=RECHERCHE GLOBALE TOUS FORMATS (*.*)"
set "DUP_SEL=> Selectionnez le type de fichier (1-6): "
set "DUP_ACTION=Que voulez-vous faire des fichiers en double ?"
set "DUP_ACT1=1. Supprimer les doublons automatiquement"
set "DUP_ACT2=2. Deplacer les doublons vers un dossier de quarantaine"
set "DUP_ACT3=3. Exporter la liste des doublons en TXT (Rapport uniquement)"
set "DUP_ACT_SEL=> Selectionnez l'action (1-3): "

set "S1_1=Ouvrir la configuration generale du systeme (CMD)"
set "S1_2=Ouvrir Reseau et Internet / Wi-Fi (CMD)"
set "S1_3=Ouvrir Windows Update / Mises a jour (CMD)"
set "S1_4=Ouvrir Bluetooth et Appareils (CMD)"
set "S1_5=Ouvrir les comptes d'utilisateurs (CMD)"
set "S1_6=Ouvrir le Panneau de configuration classique (CMD)"
set "S1_7=Ouvrir les connexions réseau classiques (CMD)"
set "S1_8=Ouvrir Programmes et fonctionnalites (CMD)"

set "S2_1=Lire la cle de licence gravee dans le BIOS / Carte mere (OEM) (CMD)"
set "S2_2=Etat d'activation detaille a l'ecran (CMD/VBS)"
set "S2_3=Verifier la date d'expiration de la licence (CMD/VBS)"
set "S2_4=Changer / Installer une nouvelle cle de produit (CMD/VBS)"
set "S2_5=Forcer l'activation en ligne (CMD/VBS)"

set "S3_1=EXPORTER/Sauvegarder TOUS les pilotes dans un dossier (CMD)"
set "S3_2=IMPORTER/Installer en masse les pilotes sauvegardes (.inf) (CMD)"
set "S3_3=INJECTER DES PILOTES HORS LIGNE sous Shift + F10 (CMD)"
set "S3_4=Demarrer les services reseau filaire sous Shift + F10 (CMD)"
set "S3_5=Lister les pilotes tiers installes dans l'image (CMD)"
set "S3_6=Ouvrir le Gestionnaire de peripheriques graphique (CMD)"

set "S4_1=Vider les fichiers temporaires (CMD)"
set "S4_2=Nettoyer les telechargements Windows Update (CMD)"
set "S4_3=Executer le Nettoyage de disque officiel (CMD)"
set "S4_4=Desactiver l'hibernation et liberer de l'espace (CMD)"

set "S5_1=Analyser et reparer les fichiers systeme (CMD)"
set "S5_2=Reparer l'image Windows en ligne (CMD)"
set "S5_3=Reparer l'image Windows hors ligne sous Shift + F10 (CMD)"
set "S5_4=Restaurer la sauvegarde du Registre (CMD)"
set "S5_5=Reinitialiser les composants reseau (CMD)"

set "S6_1=Rechercher les erreurs de fichiers sur le disque (CMD)"
set "S6_2=Analyse approfondie et reparation des secteurs defectueux (CMD)"
set "S6_3=RECHERCHE AVANCEE DE DOUBLONS (Multi-Format / Actions)"
set "S6_4=Ouvrir Diskpart pour le partitionnement (CMD)"
set "S6_5=Reconstruire le secteur de demarrage MBR (CMD)"
set "S6_6=Reconstruire le magasin BCD (CMD)"
set "S6_7=Reconstruire la partition EFI / Demarrage UEFI (CMD)"
set "S6_8=Lister les disques et lecteurs montes (CMD)"

set "S7_1=Sauvegarder C:\Users sur un disque externe (CMD)"
set "S7_2=Copie incrementielle des Documents et Images (CMD)"
set "S7_3=Clonage miroir complet entre dossiers ou disques (CMD)"
set "S7_4=Creer une image de sauvegarde systeme complete (CMD)"

set "S8_1=Voir l'IP et les details des adaptateurs reseau (CMD)"
set "S8_2=Vider le cache de resolution DNS (CMD)"
set "S8_3=Renouveler l'attribution de l'adresse IP (CMD)"
set "S8_4=Voir les connexions actives et les ports utilises (CMD)"
set "S8_5=Test de Ping continu vers Google (CMD)"
set "S8_6=Voir la table ARP et les adresses MAC locales (CMD)"
set "S8_7=Voir les profils Wi-Fi enregistres sur le PC (CMD)"

set "S9_1=Gestionnaire de peripheriques (CMD)"
set "S9_2=Gestion de l'ordinateur (CMD)"
set "S9_3=Gestion des disques (CMD)"
set "S9_4=Services Windows (CMD)"
set "S9_5=Observateur d'evenements (CMD)"
set "S9_6=Editeur du Registre Windows (CMD)"
set "S9_7=Moniteur de ressources (CMD)"
set "S9_8=Editeur de strategie de groupe local (CMD)"

set "S10_1=Lister tous les comptes d'utilisateurs (CMD)"
set "S10_2=Changer le mot de passe local sans connaitre l'actuel (CMD)"
set "S10_3=Debloquer un compte utilisateur (CMD)"
set "S10_4=Activer le compte Administrateur natif masque (CMD)"
set "S10_5=Creer un nouvel utilisateur Administrateur local (CMD)"
set "S10_6=Supprimer un utilisateur du systeme (CMD)"

set "S11_1=Lister tous les processus actifs en memoire (CMD)"
set "S11_2=Fermer un processus par son nom (CMD)"
set "S11_3=Fermer un processus par son numero PID (CMD)"

set "S12_1=Etat de sante SMART des disques (CMD)"
set "S12_2=GENERER UN RAPPORT TECHNIQUE sur le Bureau (CMD)"
set "S12_3=Details du processeur CPU (CMD)"
set "S12_4=Details de la memoire RAM installee (CMD)"
set "S12_5=Details de la carte mere et du BIOS (CMD)"
set "S12_6=Numero de serie de l'equipement (CMD)"
set "S12_7=Generer le rapport complet MSINFO32 (CMD)"

set "S13_1=Installer la suite de base via WinGet : Chrome, 7Zip, VLC, PDF (CMD)"
set "S13_2=Installer un programme specifique via son ID WinGet (CMD)"

set "S14_1=Programmer l'arret du PC en secondes (CMD)"
set "S14_2=Annuler l'arret programme (CMD)"
set "S14_3=Generer le rapport HTML de sante de la batterie (CMD)"
set "S14_4=Redemarrer le systeme immediatement (CMD)"
set "S14_5=Redemarrer directement vers l'ecran UEFI / BIOS (CMD)"

set "S15_1=Voir le Top 10 des processus consommant le plus de RAM"
set "S15_2=Desinstallateur en masse de Bloatware preinstalle"
set "S15_3=Rechercher et installer les pilotes en attente via Windows Update"
set "S15_4=Tester la connectivite d'un port TCP specifique"
set "S15_5=Vider la corbeille via PowerShell"
goto MENU_PRINCIPAL


:LANG_DE
set "T_TITLE=Schweizer Taschenmesser Manzano Version"
set "T_SUITE=UNIVERSELLE WARTUNGS- UND DIAGNOSE-SUITE"
set "T_SHIFT=(Kompatibel mit Shift + F10)"
set "T_EXIT_SCRIPT=Beenden / Skript schliessen"
set "T_SELECT=> Waehlen Sie einen Bereich (0-15): "
set "T_BACK=0. Zurueck zum Hauptmenue"
set "T_SEL_OP=> Waehlen Sie eine Option: "

set "T_SUB1=Schnellzugriff auf grafische Konfigurationspanels (CMD)"
set "T_SUB2=Windows-Lizenzen, BIOS/OEM-Schluessel & Aktivierungsstatus (CMD)"
set "T_SUB3=Treiberverwaltung, Backup & Injektion (CMD)"
set "T_SUB4=Wartung, Bereinigung & Speicherfreigabe (CMD)"
set "T_SUB5=System-, Datei- und Registrierungsreparatur (CMD)"
set "T_SUB6=Datentraegerverwaltung, UEFI/GPT & Duplikatsucher (CMD/PS)"
set "T_SUB7=Wiederherstellung, Backups & Klonen (CMD)"
set "T_SUB8=Netzwerke, Verbindungen, offene Ports, Ping & TCP/IP Reset (CMD)"
set "T_SUB9=Admin-Konsolen & Systemtools (CMD)"
set "T_SUB10=Erweiterte Sicherheit, Benutzerkonten & Passwort-Reset (CMD)"
set "T_SUB11=Leistung, Prozesse, Speicher & Beenden erzwingen (CMD)"
set "T_SUB12=Hardware-Infos, SMART-Status & Technischer Bericht (CMD)"
set "T_SUB13=Software-Bereitstellung & Masseninstallation ueber WinGet (CMD)"
set "T_SUB14=Energiesteuerung, Herunterfahren & Timer (CMD)"
set "T_SUB15=Erweiterte PowerShell-Dienstprogramme (Kopieren / Ausführen)"

set "DUP_TITLE=ERWEITERTER DUPLIKAT-DATEI-SUCHER (SHA256)"
set "DUP_PATH=> Zu scannender Pfad (z. B. C:\ oder F:\): "
set "DUP_OPT1=Fotos (*.jpg, *.png, *.webp, *.raw...)"
set "DUP_OPT2=Videos (*.mp4, *.mkv, *.avi, *.mov...)"
set "DUP_OPT3=Audio / Musik (*.mp3, *.flac, *.wav, *.aac...)"
set "DUP_OPT4=Dokumente (*.pdf, *.docx, *.xlsx, *.txt...)"
set "DUP_OPT5=Archive / Software (*.zip, *.rar, *.7z, *.exe, *.msi...)"
set "DUP_OPT6=GLOBALE SUCHE ALLE FORMATE (*.*)"
set "DUP_SEL=> Dateityp auswaehlen (1-6): "
set "DUP_ACTION=Was möchten Sie mit doppelten Dateien tun?"
set "DUP_ACT1=1. Duplikate automatisch löschen"
set "DUP_ACT2=2. Duplikate in Quarantäne-/Backup-Ordner verschieben"
set "DUP_ACT3=3. Duplikatliste nach TXT exportieren (Nur Bericht)"
set "DUP_ACT_SEL=> Aktion auswählen (1-3): "

set "S1_1=Allgemeine Systemeinstellungen oeffnen (CMD)"
set "S1_2=Netzwerk & Internet / Wi-Fi oeffnen (CMD)"
set "S1_3=Windows Update / Aktualisierungen oeffnen (CMD)"
set "S1_4=Bluetooth & Geraete oeffnen (CMD)"
set "S1_5=Benutzerkonten oeffnen (CMD)"
set "S1_6=Klassische Systemsteuerung oeffnen (CMD)"
set "S1_7=Klassische Netzwerkverbindungen oeffnen (CMD)"
set "S1_8=Programme und Features oeffnen (CMD)"

set "S2_1=Im BIOS / Mainboard gespeicherten Lizenzschluessel (OEM) lesen (CMD)"
set "S2_2=Detaillierten Aktivierungsstatus auf dem Bildschirm anzeigen (CMD/VBS)"
set "S2_3=Ablaufdatum der Lizenz pruefen (CMD/VBS)"
set "S2_4=Neuen Produktschluessel aendern / installieren (CMD/VBS)"
set "S2_5=Online-Aktivierung erzwingen (CMD/VBS)"

set "S3_1=ALLE Treiber des Geraets in einen Ordner exportieren/sichern (CMD)"
set "S3_2=Gesicherte Treiber (.inf) massenhaft importieren/installieren (CMD)"
set "S3_3=OFFLINE-TREIBER unter Shift + F10 in Windows injizieren (CMD)"
set "S3_4=Kabelgebundene Netzwerkdienste unter Shift + F10 starten (CMD)"
set "S3_5=In der Image installierte Drittanbieter-Treiber auflisten (CMD)"
set "S3_6=Grafischen Geraete-Manager oeffnen (CMD)"

set "S4_1=Temporäre Dateien löschen (CMD)"
set "S4_2=Windows Update-Downloads bereinigen (CMD)"
set "S4_3=Offizielle Datentraegerbereinigung ausfuehren (CMD)"
set "S4_4=Ruhezustand deaktivieren und Speicherplatz freigeben (CMD)"

set "S5_1=Systemdateien scannen und reparieren (CMD)"
set "S5_2=Windows-Image online reparieren (CMD)"
set "S5_3=Windows-Image offline unter Shift + F10 reparieren (CMD)"
set "S5_4=Registrierungs-Backup wiederherstellen (CMD)"
set "S5_5=Netzwerkkomponenten zuruecksetzen (CMD)"

set "S6_1=Datentraeger auf Dateifehler scannen (CMD)"
set "S6_2=Tiefenscan und Reparatur fehlerhafter Sektoren (CMD)"
set "S6_3=ERWEITERTER DUPLIKATSUCHER (Multi-Format / Aktionen)"
set "S6_4=Diskpart fuer Partitionsverwaltung oeffnen (CMD)"
set "S6_5=MBR-Bootsektor wiederherstellen (CMD)"
set "S6_6=BCD-Bootstore wiederherstellen (CMD)"
set "S6_7=EFI-Partition / UEFI-Boot wiederherstellen (CMD)"
set "S6_8=Gefundene Festplatten und Laufwerke auflisten (CMD)"

set "S7_1=Ordner C:\Users auf externem Laufwerk sichern (CMD)"
set "S7_2=Inkrementelle Kopie von Dokumenten und Bildern (CMD)"
set "S7_3=Vollstaendiges Spiegelklonieren zwischen Ordnern oder Laufwerken (CMD)"
set "S7_4=Vollstaendiges System-Backup-Image erstellen (CMD)"

set "S8_1=IP und vollstaendige Netzwerkadapterdetails anzeigen (CMD)"
set "S8_2=DNS-Aufloesungscache leeren (CMD)"
set "S8_3=IP-Adresszuweisung erneuern (CMD)"
set "S8_4=Aktive Verbindungen und verwendete Ports anzeigen (CMD)"
set "S8_5=Kontinuierlicher Ping-Test zu Google (CMD)"
set "S8_6=ARP-Tabelle und lokale MAC-Adressen anzeigen (CMD)"
set "S8_7=Gespeicherte Wi-Fi-Netzwerkprofile auf dem PC anzeigen (CMD)"

set "S9_1=Geraete-Manager (CMD)"
set "S9_2=Computerverwaltung (CMD)"
set "S9_3=Datentraegerverwaltung (CMD)"
set "S9_4=Windows-Dienste (CMD)"
set "S9_5=Windows-Ereignisanzeige (CMD)"
set "S9_6=Windows-Registrierungseditor (CMD)"
set "S9_7=Ressourcenmonitor (CMD)"
set "S9_8=Editor für lokale Gruppenrichtlinien (CMD)"

set "S10_1=Alle Benutzerkonten auf diesem PC auflisten (CMD)"
set "S10_2=Lokales Passwort aendern, ohne das aktuelle zu kennen (CMD)"
set "S10_3=Benutzerkonto entsperren (CMD)"
set "S10_4=Verstecktes Administrator-Konto aktivieren (CMD)"
set "S10_5=Neuen lokalen Administrator erstellen (CMD)"
set "S10_6=Systembenutzer loeschen (CMD)"

set "S11_1=Alle aktiven Prozesse im Arbeitsspeicher auflisten (CMD)"
set "S11_2=Prozess anhand des Namens beenden (CMD)"
set "S11_3=Prozess anhand der PID-Nummer beenden (CMD)"

set "S12_1=SMART-Festplattenstatus pruefen (CMD)"
set "S12_2=TECHNISCHEN BERICHT auf dem Desktop erstellen (CMD)"
set "S12_3=CPU-Prozessor-Details (CMD)"
set "S12_4=Installierte RAM-Speicher-Details (CMD)"
set "S12_5=Mainboard- und BIOS-Details (CMD)"
set "S12_6=Geraetesegment-Seriennummer (CMD)"
set "S12_7=Vollstaendigen MSINFO32-Bericht erstellen (CMD)"

set "S13_1=Basissuite ueber WinGet installieren: Chrome, 7Zip, VLC, PDF (CMD)"
set "S13_2=Spezifisches Programm ueber WinGet-ID installieren (CMD)"

set "S14_1=PC-Herunterfahren in Sekunden planen (CMD)"
set "S14_2=Geplantes Herunterfahren abbrechen (CMD)"
set "S14_3=Detaillierten HTML-Akkubericht erstellen (CMD)"
set "S14_4=System sofort neu starten (CMD)"
set "S14_5=Direkt in den UEFI / BIOS-Bildschirm neu starten (CMD)"

set "S15_1=TOP 10 Prozesse nach RAM-Verbrauch anzeigen"
set "S15_2=Massen-Deinstallateur fuer vorinstalliertes Bloatware"
set "S15_3=Ausstehende Treiber ueber Windows Update suchen und installieren"
set "S15_4=Konnektivitaet zu einem bestimmten TCP-Port testen"
set "S15_5=Papierkorb ueber PowerShell leeren"
goto MENU_PRINCIPAL


:LANG_IT
set "T_TITLE=Coltellino Svizzero Manzano Version"
set "T_SUITE=SUITE UNIVERSALE DI MANUTENZIONE E DIAGNOSTICA"
set "T_SHIFT=(Compatibile con Shift + F10)"
set "T_EXIT_SCRIPT=Esci / Chiudi script"
set "T_SELECT=> Seleziona un ramo (0-15): "
set "T_BACK=0. Torna al Menu Principale"
set "T_SEL_OP=> Seleziona un'opzione: "

set "T_SUB1=Accesso rapido ai pannelli di configurazione grafica (CMD)"
set "T_SUB2=Licenze Windows, chiave BIOS/OEM e stato di attivazione (CMD)"
set "T_SUB3=Gestione, backup e iniezione driver (CMD)"
set "T_SUB4=Manutenzione, pulizia e rilascio spazio (CMD)"
set "T_SUB5=Riparazione di sistema, file e registro (CMD)"
set "T_SUB6=Gestione dischi, UEFI/GPT e ricerca duplicati (CMD/PS)"
set "T_SUB7=Recupero, backup e clonazione (CMD)"
set "T_SUB8=Reti, connessioni, porte aperte, ping e reset TCP/IP (CMD)"
set "T_SUB9=Console di amministrazione e strumenti di sistema (CMD)"
set "T_SUB10=Sicurezza avanzata, account utente e reset password (CMD)"
set "T_SUB11=Prestazioni, processi, memoria e chiusura forzata (CMD)"
set "T_SUB12=Informazioni hardware, stato SMART e rapporto tecnico (CMD)"
set "T_SUB13=Distribuzione software e installazione massiva tramite WinGet (CMD)"
set "T_SUB14=Controllo energia, spegnimento e timer (CMD)"
set "T_SUB15=Utilita PowerShell avanzate (Copia / Esegui)"

set "DUP_TITLE=RICERCA AVANZATA FILE DUPLICATI (SHA256)"
set "DUP_PATH=> Percorso da scansionare (es. C:\ o F:\): "
set "DUP_OPT1=Foto (*.jpg, *.png, *.webp, *.raw...)"
set "DUP_OPT2=Video (*.mp4, *.mkv, *.avi, *.mov...)"
set "DUP_OPT3=Audio / Musica (*.mp3, *.flac, *.wav, *.aac...)"
set "DUP_OPT4=Documenti (*.pdf, *.docx, *.xlsx, *.txt...)"
set "DUP_OPT5=Archivi / Software (*.zip, *.rar, *.7z, *.exe, *.msi...)"
set "DUP_OPT6=RICERCA GLOBALE TUTTI I FORMATI (*.*)"
set "DUP_SEL=> Seleziona tipo di file (1-6): "
set "DUP_ACTION=Cosa desideri fare con i file duplicati?"
set "DUP_ACT1=1. Elimina duplicati automaticamente"
set "DUP_ACT2=2. Sposta duplicati in una cartella di quarantena/backup"
set "DUP_ACT3=3. Esporta elenco duplicati in TXT (Solo rapporto)"
set "DUP_ACT_SEL=> Seleziona azione (1-3): "

set "S1_1=Apri configurazione generale del sistema (CMD)"
set "S1_2=Apri Rete e Internet / Wi-Fi (CMD)"
set "S1_3=Apri Windows Update / Aggiornamenti (CMD)"
set "S1_4=Apri Bluetooth e Dispositivi (CMD)"
set "S1_5=Apri Account utente (CMD)"
set "S1_6=Apri Pannello di controllo classico (CMD)"
set "S1_7=Apri Connessioni di rete classiche (CMD)"
set "S1_8=Apri Programmi e funzionalita (CMD)"

set "S2_1=Leggi chiave di licenza memorizzata nel BIOS / Scheda madre (OEM) (CMD)"
set "S2_2=Stato di attivazione dettagliato a schermo (CMD/VBS)"
set "S2_3=Controlla data di scadenza della licenza (CMD/VBS)"
set "S2_4=Cambia / Installa nuova chiave prodotto (CMD/VBS)"
set "S2_5=Forza attivazione online (CMD/VBS)"

set "S3_1=ESPORTA/Salva TUTTI i driver del computer in una cartella (CMD)"
set "S3_2=IMPORTA/Installa massivamente i driver salvati (.inf) (CMD)"
set "S3_3=INIETTA DRIVER OFFLINE in Windows con Shift + F10 (CMD)"
set "S3_4=Avvia servizi di rete via cavo in Shift + F10 (CMD)"
set "S3_5=Elenca i driver di terze parti installati nell'immagine (CMD)"
set "S3_6=Apri Gestione dispositivi grafica (CMD)"

set "S4_1=Svuota file temporanei (CMD)"
set "S4_2=Pulisci download di Windows Update (CMD)"
set "S4_3=Esegui Pulizia disco ufficiale (CMD)"
set "S4_4=Disattiva ibernazione e libera spazio (CMD)"

set "S5_1=Scansione e riparazione file di sistema (CMD)"
set "S5_2=Ripara immagine Windows online (CMD)"
set "S5_3=Ripara immagine Windows offline con Shift + F10 (CMD)"
set "S5_4=Ripristina backup del Registro (CMD)"
set "S5_5=Ripristina componenti di rete (CMD)"

set "S6_1=Scansione errori di file su disco (CMD)"
set "S6_2=Scansione profonda e riparazione settori danneggiati (CMD)"
set "S6_3=RICERCA AVANZATA DUPLICATI (Multi-Formato / Azioni)"
set "S6_4=Apri Diskpart per il partizionamento dei dischi (CMD)"
set "S6_5=Ricostruisci settore di avvio MBR (CMD)"
set "S6_6=Ricostruisci archivio di avvio BCD (CMD)"
set "S6_7=Ricostruisci partizione EFI / Avvio UEFI (CMD)"
set "S6_8=Elenca dischi e unita montate (CMD)"

set "S7_1=Esegui backup della cartella C:\Users su disco esterno (CMD)"
set "S7_2=Copia incrementale di Documenti e Immagini (CMD)"
set "S7_3=Clonazione mirror completa tra cartelle o dischi (CMD)"
set "S7_4=Crea immagine di backup del sistema completo (CMD)"

set "S8_1=Visualizza IP e dettagli completi degli adattatori di rete (CMD)"
set "S8_2=Svuota la cache di risoluzione DNS (CMD)"
set "S8_3=Rinnova l'assegnazione dell'indirizzo IP (CMD)"
set "S8_4=Visualizza connessioni attive e porte in uso (CMD)"
set "S8_5=Test di Ping continuo a Google (CMD)"
set "S8_6=Visualizza tabella ARP e indirizzi MAC della rete locale (CMD)"
set "S8_7=Visualizza profili di reti Wi-Fi salvati sul PC (CMD)"

set "S9_1=Gestione dispositivi (CMD)"
set "S9_2=Gestione computer (CMD)"
set "S9_3=Gestione disco (CMD)"
set "S9_4=Servizi di Windows (CMD)"
set "S9_5=Visualizzatore eventi di Windows (CMD)"
set "S9_6=Editor del Registro di sistema di Windows (CMD)"
set "S9_7=Monitor risorse (CMD)"
set "S9_8=Editor Criteri di gruppo locali (CMD)"

set "S10_1=Elenca tutti gli account utente di questo PC (CMD)"
set "S10_2=Cambia password account locale senza conoscere la corrente (CMD)"
set "S10_3=Sblocca un account utente (CMD)"
set "S10_4=Abilita account Amministratore nativo nascosto (CMD)"
set "S10_5=Crea nuovo utente Amministratore locale (CMD)"
set "S10_6=Elimina un utente dal sistema (CMD)"

set "S11_1=Elenca tutti i processi attivi in memoria (CMD)"
set "S11_2=Chiudi un processo per nome (CMD)"
set "S11_3=Chiudi un processo per numero PID (CMD)"

set "S12_1=Stato di salute SMART dei dischi (CMD)"
set "S12_2=GENERA RAPPORTO TECNICO DEL PC sul Desktop (CMD)"
set "S12_3=Dettagli del processore CPU (CMD)"
set "S12_4=Dettagli della memoria RAM installata (CMD)"
set "S12_5=Dettagli di Scheda madre e BIOS (CMD)"
set "S12_6=Numero di serie del computer (CMD)"
set "S12_7=Genera rapporto MSINFO32 completo (CMD)"

set "S13_1=Installa Suite Base via WinGet: Chrome, 7Zip, VLC, PDF (CMD)"
set "S13_2=Installa programma specifico inserendo il suo ID WinGet (CMD)"

set "S14_1=Programma spegnimento del PC in secondi (CMD)"
set "S14_2=Annulla spegnimento programmato (CMD)"
set "S14_3=Genera rapporto dettagliato sulla salute della batteria in HTML (CMD)"
set "S14_4=Riavvia il sistema immediatamente (CMD)"
set "S14_5=Riavvia direttamente alla schermata UEFI / BIOS (CMD)"

set "S15_1=Visualizza i primi 10 processi che consumano piu RAM"
set "S15_2=Disinstallatore di massa di Bloatware preinstallato"
set "S15_3=Cerca e installa driver in sospeso tramite Windows Update"
set "S15_4=Testa la connettivita a una porta TCP specifica"
set "S15_5=Svuota il Cestino tramite PowerShell"
goto MENU_PRINCIPAL


:LANG_PT
set "T_TITLE=Canivete Suico Manzano Version"
set "T_SUITE=SUITE UNIVERSAL DE MANUTENCAO E DIAGNOSTICO DE EQUIPAMENTOS"
set "T_SHIFT=(Compativel com Shift + F10)"
set "T_EXIT_SCRIPT=Sair / Fechar Script"
set "T_SELECT=> Selecione um ramo (0-15): "
set "T_BACK=0. Voltar ao Menu Principal"
set "T_SEL_OP=> Selecione uma opcao: "

set "T_SUB1=Acesso rapido aos paineis de configuracao grafica (CMD)"
set "T_SUB2=Licencas do Windows, chave BIOS/OEM e estado de ativacao (CMD)"
set "T_SUB3=Gerenciamento, backup e injecao de drivers (CMD)"
set "T_SUB4=Manutencao, limpeza e liberacao de espaco (CMD)"
set "T_SUB5=Reparacao do sistema, arquivos e registro (CMD)"
set "T_SUB6=Gerenciamento de discos, UEFI/GPT e buscador de duplicados (CMD/PS)"
set "T_SUB7=Recuperacao, copias de seguranca e clonagem (CMD)"
set "T_SUB8=Redes, conexoes, portas abertas, ping e reset TCP/IP (CMD)"
set "T_SUB9=Console de administracao e ferramentas do sistema (CMD)"
set "T_SUB10=Seguranca avancada, contas de usuario e redefinicao de senha (CMD)"
set "T_SUB11=Desempenho, processos, memoria e encerramento forcado (CMD)"
set "T_SUB12=Informacoes de hardware, saude SMART e relatorio tecnico (CMD)"
set "T_SUB13=Implantacao de software e instalacao em massa via WinGet (CMD)"
set "T_SUB14=Controle de energia, desligamento e temporizadores (CMD)"
set "T_SUB15=Utilitarios Avancados do PowerShell (Copiar / Executar)"

set "DUP_TITLE=BUSCADOR AVANCADO DE ARQUIVOS DUPLICADOS (SHA256)"
set "DUP_PATH=> Caminho a analisar (ex. C:\ ou F:\): "
set "DUP_OPT1=Fotos (*.jpg, *.png, *.webp, *.raw...)"
set "DUP_OPT2=Videos (*.mp4, *.mkv, *.avi, *.mov...)"
set "DUP_OPT3=Audio / Musica (*.mp3, *.flac, *.wav, *.aac...)"
set "DUP_OPT4=Documentos (*.pdf, *.docx, *.xlsx, *.txt...)"
set "DUP_OPT5=Compactados / Software (*.zip, *.rar, *.7z, *.exe, *.msi...)"
set "DUP_OPT6=BUSCA GLOBAL TODOS OS FORMATOS (*.*)"
set "DUP_SEL=> Selecione o tipo de arquivo (1-6): "
set "DUP_ACTION=O que deseja fazer com os arquivos duplicados?"
set "DUP_ACT1=1. Excluir duplicados automaticamente"
set "DUP_ACT2=2. Mover duplicados para uma pasta de quarentena/backup"
set "DUP_ACT3=3. Exportar lista de duplicados para TXT (Apenas relatorio)"
set "DUP_ACT_SEL=> Selecione a acao (1-3): "

set "S1_1=Abrir Configuracao Geral do Sistema (CMD)"
set "S1_2=Abrir Rede e Internet / Wi-Fi (CMD)"
set "S1_3=Abrir Windows Update / Atualizacoes (CMD)"
set "S1_4=Abrir Bluetooth e Dispositivos (CMD)"
set "S1_5=Abrir Contas de Usuario (CMD)"
set "S1_6=Abrir Painel de Controle Classico (CMD)"
set "S1_7=Abrir Conexoes de Rede Classicas (CMD)"
set "S1_8=Abrir Programas e Recursos (CMD)"

set "S2_1=Ler Chave de Licenca gravada na BIOS / Placa-mae (OEM) (CMD)"
set "S2_2=Estado de ativacao detalhado na tela (CMD/VBS)"
set "S2_3=Verificar data de expiracao da licencas (CMD/VBS)"
set "S2_4=Alterar / Instalar nova chave de produto (CMD/VBS)"
set "S2_5=Forcar ativacao pela Internet (CMD/VBS)"

set "S3_1=EXPORTAR/Resgatar TODOS os drivers do PC para uma pasta (CMD)"
set "S3_2=IMPORTAR/Instalar massivamente drivers resgatados (.inf) (CMD)"
set "S3_3=INJETAR DRIVERS OFFLINE no Windows em Shift + F10 (CMD)"
set "S3_4=Iniciar Servicos de Rede Cabeada em Shift + F10 (CMD)"
set "S3_5=Listar drivers de terceiros instalados na imagem (CMD)"
set "S3_6=Abrir Gerenciador de Dispositivos grafico (CMD)"

set "S4_1=Esvaziar arquivos temporarios (CMD)"
set "S4_2=Limpar downloads do Windows Update (CMD)"
set "S4_3=Executar o Limpador de Disco oficial (CMD)"
set "S4_4=Desativar hibernacao e liberar espaco (CMD)"

set "S5_1=Analise e reparacao de arquivos do sistema (CMD)"
set "S5_2=Reparar imagem do Windows online (CMD)"
set "S5_3=Reparar imagem do Windows offline em Shift + F10 (CMD)"
set "S5_4=Restaurar Backup do Registro (CMD)"
set "S5_5=Redefinir componentes de rede (CMD)"

set "S6_1=Verificacao de erros de arquivo no disco (CMD)"
set "S6_2=Varredura profunda e reparacao de setores defeituosos (CMD)"
set "S6_3=BUSCADOR AVANCADO DE DUPLICADOS (Multi-Formato / Acoes)"
set "S6_4=Abrir Diskpart para particionamento de discos (CMD)"
set "S6_5=Reconstruir setor de inicializacao MBR (CMD)"
set "S6_6=Reconstruir repositorio de inicializacao BCD (CMD)"
set "S6_7=Reconstruir particao EFI / Inicializacao UEFI (CMD)"
set "S6_8=Listar discos e unidades montadas (CMD)"

set "S7_1=Fazer backup da pasta C:\Users para disco externo (CMD)"
set "S7_2=Copia incremental de Documentos e Imagens (CMD)"
set "S7_3=Clonagem Espelho Completa entre pastas ou discos (CMD)"
set "S7_4=Criar Imagem de Backup do Sistema completo (CMD)"

set "S8_1=Ver IP e dados completos de adaptadores de rede (CMD)"
set "S8_2=Esvaziar o cache de resolucao DNS (CMD)"
set "S8_3=Renovar atribuicao de endereco IP (CMD)"
set "S8_4=Ver conexoes ativas e portas em uso (CMD)"
set "S8_5=Teste de Ping continuo ao Google (CMD)"
set "S8_6=Ver tabela ARP e enderecos MAC da rede local (CMD)"
set "S8_7=Ver perfis de redes Wi-Fi salvos no equipamento (CMD)"

set "S9_1=Gerenciador de Dispositivos (CMD)"
set "S9_2=Gerenciamento do Computador (CMD)"
set "S9_3=Gerenciamento de Discos (CMD)"
set "S9_4=Servicos do Windows (CMD)"
set "S9_5=Visualizador de Eventos do Windows (CMD)"
set "S9_6=Editor do Registro do Windows (CMD)"
set "S9_7=Monitor de Recursos (CMD)"
set "S9_8=Editor de Politica de Grupo Local (CMD)"

set "S10_1=Listar todas as contas de usuario deste PC (CMD)"
set "S10_2=Alterar senha de conta local sem saber a atual (CMD)"
set "S10_3=Desbloquear uma conta de usuario (CMD)"
set "S10_4=Ativar conta oculta de Administrador nativo (CMD)"
set "S10_5=Criar novo usuario Administrador Local (CMD)"
set "S10_6=Excluir um usuario do sistema (CMD)"

set "S11_1=Listar todos os processos ativos em memoria (CMD)"
set "S11_2=Encerrar um processo pelo nome (CMD)"
set "S11_3=Encerrar um processo pelo numero PID (CMD)"

set "S12_1=Estado de Saude SMART de Discos (CMD)"
set "S12_2=GERAR RELATORIO TECNICO DO PC no Desktop (CMD)"
set "S12_3=Detalhes do Processador CPU (CMD)"
set "S12_4=Detalhes de Memoria RAM instalada (CMD)"
set "S12_5=Detalhes de Placa-mae e BIOS (CMD)"
set "S12_6=Numero de serie do equipamento (CMD)"
set "S12_7=Gerar relatorio MSINFO32 completo (CMD)"

set "S13_1=Instalar Suite Basica via WinGet: Chrome, 7Zip, VLC, PDF (CMD)"
set "S13_2=Instalar programa especifico inserindo seu ID do WinGet (CMD)"

set "S14_1=Programar desligamento do PC em segundos (CMD)"
set "S14_2=Cancelar desligamento programado (CMD)"
set "S14_3=Gerar relatorio detalhado de saude da Bateria em HTML (CMD)"
set "S14_4=Reiniciar o sistema imediatamente (CMD)"
set "S14_5=Reiniciar diretamente para a tela UEFI / BIOS (CMD)"

set "S15_1=Ver TOP 10 Procesos consumiendo mas RAM"
set "S15_2=Desinstalador massivo de Bloatware pre-instalado"
set "S15_3=Pesquisar e instalar drivers pendentes via Windows Update"
set "S15_4=Testar conectividade a uma Porta TCP especifica"
set "S15_5=Esvaziar Lixeira via PowerShell"
goto MENU_PRINCIPAL


:LANG_JA
set "T_TITLE=Manzano Swiss Army Knife"
set "T_SUITE=UNIVERSAL EQUIPMENT DIAGNOSTIC AND MANAGEMENT SUITE"
set "T_SHIFT=(Shift + F10 互換)"
set "T_EXIT_SCRIPT=終了 / スクリプトを閉じる"
set "T_SELECT=> 分岐を選択してください (0-15): "
set "T_BACK=0. メインメニューに戻る"
set "T_SEL_OP=> オプションを選択してください: "

set "T_SUB1=グラフィック設定パネルへのクイックアクセス (CMD)"
set "T_SUB2=Windowsライセンス、BIOS/OEMキーとアクティベーション状態 (CMD)"
set "T_SUB3=ドライバー管理、バックアップ、インジェクション (CMD)"
set "T_SUB4=メンテナンス、クリーンアップ、空き容量確保 (CMD)"
set "T_SUB5=システム、ファイル、レジストリ修復 (CMD)"
set "T_SUB6=ディスク管理、UEFI/GPT、重複ファインダー (CMD/PS)"
set "T_SUB7=リカバリ、バックアップ、クローン作成 (CMD)"
set "T_SUB8=ネットワーク、接続、オープンポート、Ping、TCP/IPリセット (CMD)"
set "T_SUB9=管理コンソールとシステムツール (CMD)"
set "T_SUB10=高度なセキュリティ、ユーザーアカウント、パスワードリセット (CMD)"
set "T_SUB11=パフォーマンス、プロセス、メモリ、強制終了 (CMD)"
set "T_SUB12=ハードウェア情報、SMART健康状態、技術レポート (CMD)"
set "T_SUB13=WinGetによるソフトウェア展開と一括インストール (CMD)"
set "T_SUB14=電源制御、シャットダウン、タイマー (CMD)"
set "T_SUB15=高度なPowerShellユーティリティ (コピー / 実行)"

set "DUP_TITLE=高度な重複ファイル検索 (SHA256)"
set "DUP_PATH=> スキャンするパス (例: C:\ または F:\): "
set "DUP_OPT1=写真 (*.jpg, *.png, *.webp, *.raw...)"
set "DUP_OPT2=動画 (*.mp4, *.mkv, *.avi, *.mov...)"
set "DUP_OPT3=音楽 / オーディオ (*.mp3, *.flac, *.wav, *.aac...)"
set "DUP_OPT4=ドキュメント (*.pdf, *.docx, *.xlsx, *.txt...)"
set "DUP_OPT5=圧縮ファイル / ソフトウェア (*.zip, *.rar, *.7z, *.exe, *.msi...)"
set "DUP_OPT6=すべての形式のグローバル検索 (*.*)"
set "DUP_SEL=> ファイルタイプを選択してください (1-6): "
set "DUP_ACTION=重複ファイルに対して何を行いますか？"
set "DUP_ACT1=1. 重複ファイルを自動的に削除"
set "DUP_ACT2=2. 重複ファイルを隔離/バックアップフォルダーに移動"
set "DUP_ACT3=3. 重複リストをTXTにエクスポート (レポートのみ)"
set "DUP_ACT_SEL=> アクションを選択してください (1-3): "

set "S1_1=一般システム設定を開く (CMD)"
set "S1_2=ネットワークとインターネット / Wi-Fi を開く (CMD)"
set "S1_3=Windows Update / 更新プログラムを開く (CMD)"
set "S1_4=Bluetooth とデバイスを開く (CMD)"
set "S1_5=ユーザーアカウントを開く (CMD)"
set "S1_6=クラシックコントロールパネルを開く (CMD)"
set "S1_7=クラシックネットワーク接続を開く (CMD)"
set "S1_8=プログラムと機能を開く (CMD)"

set "S2_1=BIOS / マザーボードに保存されたライセンスキー (OEM) の読み取り (CMD)"
set "S2_2=画面上の詳細なアクティベーション状態 (CMD/VBS)"
set "S2_3=ライセンスの有効期限を確認 (CMD/VBS)"
set "S2_4=新しいプロダクトキーの変更 / インストール (CMD/VBS)"
set "S2_5=オンラインアクティベーションの強制実行 (CMD/VBS)"

set "S3_1=すべてのドライバーをフォルダにエクスポート/保存 (CMD)"
set "S3_2=保存されたドライバー (.inf) の一括インポート/インストール (CMD)"
set "S3_3=Shift + F10 でWindowsにオフラインドライバーをインジェクション (CMD)"
set "S3_4=Shift + F10 で有線ネットワークサービスの開始 (CMD)"
set "S3_5=イメージにインストールされているサードパーティ製ドライバーの一覧表示 (CMD)"
set "S3_6=グラフィカルデバイスマネージャーを開く (CMD)"

set "S4_1=一時ファイルの空き容量確保 (CMD)"
set "S4_2=Windows Update ダウンロードのクリーンアップ (CMD)"
set "S4_3=公式ディスククリーンアップの実行 (CMD)"
set "S4_4=ハイブリッドスリープ/休止状態の無効化と容量確保 (CMD)"

set "S5_1=システムファイルののスキャンと修復 (CMD)"
set "S5_2=オンラインでのWindowsイメージ修復 (CMD)"
set "S5_3=Shift + F10 でオフラインでのWindowsイメージ修復 (CMD)"
set "S5_4=レジストリバックアップの復元 (CMD)"
set "S5_5=ネットワークコンポーネントのリセット (CMD)"

set "S6_1=ディスク上のファイルエラーのスキャン (CMD)"
set "S6_2=不良セクタの詳細スキャンと修復 (CMD)"
set "S6_3=高度な重複ファイル検索 (マルチフォーマット / アクション)"
set "S6_4=ディスクパーティション用のDiskpartを開く (CMD)"
set "S6_5=MBRブートセクターの再構築 (CMD)"
set "S6_6=BCDブートストアの再構築 (CMD)"
set "S6_7=EFIパーティション / UEFIブートの再構築 (CMD)"
set "S6_8=マウントされたディスクとドライブの一覧表示 (CMD)"

set "S7_1=C:\Usersフォルダを外付けドライブにバックアップ (CMD)"
set "S7_2=ドキュメントとピクチャの増分コピー (CMD)"
set "S7_3=フォルダまたはディスク間の完全ミラークローン (CMD)"
set "S7_4=完全システムバックアップイメージの作成 (CMD)"

set "S8_1=IPとネットワークアダプターの詳細を表示 (CMD)"
set "S8_2=DNS解決キャッシュのクリア (CMD)"
set "S8_3=IPアドレス割り当ての更新 (CMD)"
set "S8_4=アクティブな接続と使用中のポートを表示 (CMD)"
set "S8_5=Googleへの継続的Pingテスト (CMD)"
set "S8_6=ARPテーブルとローカルMACアドレスを表示 (CMD)"
set "S8_7=保存されたWi-Fiネットワークプロファイルを表示 (CMD)"

set "S9_1=デバイスマネージャー (CMD)"
set "S9_2=コンピューターの管理 (CMD)"
set "S9_3=ディスクの管理 (CMD)"
set "S9_4=Windowsサービス (CMD)"
set "S9_5=Windowsイベントビューア (CMD)"
set "S9_6=Windowsレジストリ エディター (CMD)"
set "S9_7=リソースモニター (CMD)"
set "S9_8=ローカルグループポリシーエディター (CMD)"

set "S10_1=このPCのすべてのユーザーアカウントの一覧表示 (CMD)"
set "S10_2=現在のアカウントを知らずにローカルパスワードを変更 (CMD)"
set "S10_3=ユーザーアカウントのロック解除 (CMD)"
set "S10_4=非表示のネイティブAdministratorアカウントを有効化 (CMD)"
set "S10_5=新しいローカル管理者ユーザーの作成 (CMD)"
set "S10_6=システムユーザーの削除 (CMD)"

set "S11_1=メモリ内のすべての有効なプロセスの一覧表示 (CMD)"
set "S11_2=名前でプロセスを終了 (CMD)"
set "S11_3=PID番号でプロセスを終了 (CMD)"

set "S12_1=ディスクのSMART健康状態 (CMD)"
set "S12_2=デスクトップに機器技術レポートを生成 (CMD)"
set "S12_3=CPUプロセッサーの詳細 (CMD)"
set "S12_4=インストールされたRAMメモリの詳細 (CMD)"
set "S12_5=マザーボードとBIOSの詳細 (CMD)"
set "S12_6=機器のシリアル番号 (CMD)"
set "S12_7=完全なMSINFO32レポートの生成 (CMD)"

set "S13_1=WinGetで基本スイートをインストール: Chrome, 7Zip, VLC, PDF (CMD)"
set "S13_2=WinGet IDを入力して特定のプログラムをインストール (CMD)"

set "S14_1=秒単位でPCのシャットダウンを予約 (CMD)"
set "S14_2=予約されたシャットダウンのキャンセル (CMD)"
set "S14_3=HTML形式の詳細なバッテリー健康状態レポートを生成 (CMD)"
set "S14_4=システムを直ちに再起動 (CMD)"
set "S14_5=UEFI / BIOS画面に直接再起動 (CMD)"

set "S15_1=RAM消費量トップ10プロセスの表示"
set "S15_2=プリインストールされたBloatwareの一括アンインストーラー"
set "S15_3=Windows Update経由での保留中ドライバーの検索とインストール"
set "S15_4=特定のTCPポートへの接続テスト"
set "S15_5=PowerShell経由でごみ箱を空にする"
goto MENU_PRINCIPAL


:LANG_ZH
set "T_TITLE=Manzano 瑞士军刀版本"
set "T_SUITE=通用设备诊断与管理套件"
set "T_SHIFT=(兼容 Shift + F10)"
set "T_EXIT_SCRIPT=退出 / 关闭脚本"
set "T_SELECT=> 请选择分支 (0-15): "
set "T_BACK=0. 返回主菜单"
set "T_SEL_OP=> 请选择一个选项: "

set "T_SUB1=快速访问图形配置面板 (CMD)"
set "T_SUB2=Windows 许可证、BIOS/OEM 密钥及激活状态 (CMD)"
set "T_SUB3=驱动程序管理、备份与注入 (CMD)"
set "T_SUB4=维护、清理与释放空间 (CMD)"
set "T_SUB5=系统、文件与注册表修复 (CMD)"
set "T_SUB6=磁盘管理、UEFI/GPT 与重复文件查找器 (CMD/PS)"
set "T_SUB7=恢复、备份与克隆 (CMD)"
set "T_SUB8=网络、连接、开放端口、Ping 与 TCP/IP 重置 (CMD)"
set "T_SUB9=管理控制台与系统工具 (CMD)"
set "T_SUB10=高级安全、用户账户与密码重置 (CMD)"
set "T_SUB11=性能、进程、内存与强制关闭 (CMD)"
set "T_SUB12=硬件信息、SMART 硬盘健康与技术报告 (CMD)"
set "T_SUB13=使用 WinGet 部署软件与批量安装 (CMD)"
set "T_SUB14=电源控制、关机与定时器 (CMD)"
set "T_SUB15=高级 PowerShell 实用工具 (复制 / 运行)"

set "DUP_TITLE=高级重复文件查找器 (SHA256)"
set "DUP_PATH=> 要扫描的路径 (例如 C:\ 或 F:\): "
set "DUP_OPT1=照片 (*.jpg, *.png, *.webp, *.raw...)"
set "DUP_OPT2=视频 (*.mp4, *.mkv, *.avi, *.mov...)"
set "DUP_OPT3=音频 / 音乐 (*.mp3, *.flac, *.wav, *.aac...)"
set "DUP_OPT4=文档 (*.pdf, *.docx, *.xlsx, *.txt...)"
set "DUP_OPT5=压缩包 / 软件 (*.zip, *.rar, *.7z, *.exe, *.msi...)"
set "DUP_OPT6=全局搜索所有格式 (*.*)"
set "DUP_SEL=> 选择文件类型 (1-6): "
set "DUP_ACTION=您想对重复文件做什么？"
set "DUP_ACT1=1. 自动删除重复文件"
set "DUP_ACT2=2. 将重复文件移动到隔离/备份文件夹"
set "DUP_ACT3=3. 将重复项列表导出为 TXT (仅生成报告)"
set "DUP_ACT_SEL=> 选择操作 (1-3): "

set "S1_1=打开常规系统配置 (CMD)"
set "S1_2=打开网络和互联网 / Wi-Fi (CMD)"
set "S1_3=打开 Windows Update / 更新 (CMD)"
set "S1_4=打开蓝牙和设备 (CMD)"
set "S1_5=打开用户账户 (CMD)"
set "S1_6=打开经典控制面板 (CMD)"
set "S1_7=打开经典网络连接 (CMD)"
set "S1_8=打开程序和功能 (CMD)"

set "S2_1=读取保存在 BIOS / 主板中的许可证密钥 (OEM) (CMD)"
set "S2_2=屏幕上显示的详细激活状态 (CMD/VBS)"
set "S2_3=检查许可证到期日期 (CMD/VBS)"
set "S2_4=更改 / 安装新产品密钥 (CMD/VBS)"
set "S2_5=强制联网激活 (CMD/VBS)"

set "S3_1=导出/备份设备中的所有驱动程序到文件夹 (CMD)"
set "S3_2=批量导入/安装备份的驱动程序 (.inf) (CMD)"
set "S3_3=在 Shift + F10 下向 Windows 注入离线驱动 (CMD)"
set "S3_4=在 Shift + F10 下启动有线网络服务 (CMD)"
set "S3_5=列出映像中安装的第三方驱动程序 (CMD)"
set "S3_6=打开图形设备管理器 (CMD)"

set "S4_1=清空临时文件 (CMD)"
set "S4_2=清理 Windows Update 下载缓存 (CMD)"
set "S4_3=运行官方磁盘清理工具 (CMD)"
set "S4_4=禁用休眠并释放空间 (CMD)"

set "S5_1=扫描并修复系统文件 (CMD)"
set "S5_2=在线修复 Windows 映像 (CMD)"
set "S5_3=在 Shift + F10 下离线修复 Windows 映像 (CMD)"
set "S5_4=还原注册表备份 (CMD)"
set "S5_5=重置网络组件 (CMD)"

set "S6_1=扫描磁盘上的文件错误 (CMD)"
set "S6_2=深度扫描并修复坏道 (CMD)"
set "S6_3=高级重复文件查找器 (多格式 / 多操作)"
set "S6_4=打开 Diskpart 进行磁盘分区 (CMD)"
set "S6_5=重建 MBR 引导扇区 (CMD)"
set "S6_6=重建 BCD 引导库 (CMD)"
set "S6_7=重建 EFI 分区 / UEFI 引导 (CMD)"
set "S6_8=列出挂载的磁盘和驱动器 (CMD)"

set "S7_1=将 C:\Users 文件夹备份到外部硬盘 (CMD)"
set "S7_2=文档和图片的增量备份 (CMD)"
set "S7_3=文件夹或磁盘之间的完整镜像克隆 (CMD)"
set "S7_4=创建完整系统备份映像 (CMD)"

set "S8_1=查看 IP 及网络适配器的完整详细信息 (CMD)"
set "S8_2=清空 DNS 解析缓存 (CMD)"
set "S8_3=更新 IP 地址分配 (CMD)"
set "S8_4=查看活动连接和正在使用的端口 (CMD)"
set "S8_5=对谷歌进行持续 Ping 测试 (CMD)"
set "S8_6=查看 ARP 表及本地网络的 MAC 地址 (CMD)"
set "S8_7=查看电脑上保存的 Wi-Fi 网络配置文件 (CMD)"

set "S9_1=设备管理器 (CMD)"
set "S9_2=计算机管理 (CMD)"
set "S9_3=磁盘管理 (CMD)"
set "S9_4=Windows 服务 (CMD)"
set "S9_5=Windows 事件查看器 (CMD)"
set "S9_6=Windows 注册表编辑器 (CMD)"
set "S9_7=资源监视器 (CMD)"
set "S9_8=本地组策略编辑器 (CMD)"

set "S10_1=列出该 PC 上的所有用户账户 (CMD)"
set "S10_2=在不知道当前密码的情况下更改本地账户密码 (CMD)"
set "S10_3=解除锁定用户账户 (CMD)"
set "S10_4=启用隐藏的内置管理员账户 (CMD)"
set "S10_5=创建新的本地管理员用户 (CMD)"
set "S10_6=从系统中删除用户 (CMD)"

set "S11_1=列出内存中所有活动进程 (CMD)"
set "S11_2=根据名称关闭进程 (CMD)"
set "S11_3=根据 PID 编号关闭进程 (CMD)"

set "S12_1=硬盘 SMART 健康状态 (CMD)"
set "S12_2=在桌面上生成设备技术报告 (CMD)"
set "S12_3=CPU 处理器详细信息 (CMD)"
set "S12_4=已安装的 RAM 内存详细信息 (CMD)"
set "S12_5=主板和 BIOS 详细信息 (CMD)"
set "S12_6=设备序列号 (CMD)"
set "S12_7=生成完整的 MSINFO32 报告 (CMD)"

set "S13_1=通过 WinGet 安装基础套件：Chrome, 7Zip, VLC, PDF (CMD)"
set "S13_2=输入 WinGet ID 安装特定程序 (CMD)"

set "S14_1=按秒数计划电脑关机 (CMD)"
set "S14_2=取消计划关机 (CMD)"
set "S14_3=生成详细的 HTML 电池健康报告 (CMD)"
set "S14_4=立即重启系统 (CMD)"
set "S14_5=直接重启进入 UEFI / BIOS 界面 (CMD)"

set "S15_1=查看内存占用最高的前 10 个进程"
set "S15_2=批量卸载预装的 Bloatware (垃圾应用)"
set "S15_3=通过 Windows Update 搜索并安装挂起的驱动程序"
set "S15_4=测试特定 TCP 端口的连通性"
set "S15_5=通过 PowerShell 清空回收站"
goto MENU_PRINCIPAL


:LANG_RU
set "T_TITLE=Shveytsarskiy Nozh Manzano"
set "T_SUITE=UNIVERSALNYY KOMPLEKT DIAGNOSTIKI I UPRAVLENIYA"
set "T_SHIFT=(Sovmestim s Shift + F10)"
set "T_EXIT_SCRIPT=Vykhod / Zakryt' skript"
set "T_SELECT=> Vyberite razdel (0-15): "
set "T_BACK=0. Vernutsya v glavnoye menyu"
set "T_SEL_OP=> Vyberite optsiyu: "

set "T_SUB1=Bystryy dostup k panelyam graficheskoy nastroyki (CMD)"
set "T_SUB2=Litsenzii Windows, klyuch BIOS/OEM i sostoyaniye aktivatsii (CMD)"
set "T_SUB3=Upravleniye, rezervnoye kopirovaniye i vnedreniye drayverov (CMD)"
set "T_SUB4=Obsluzhivaniye, ochistka i osvobozhdeniye prostranstva (CMD)"
set "T_SUB5=Remont sistemy, faylov i reyestra (CMD)"
set "T_SUB6=Upravleniye diskami, UEFI/GPT i poisk dublikatov (CMD/PS)"
set "T_SUB7=Vosstanovleniye, rezervnyye kopii i klonirovaniye (CMD)"
set "T_SUB8=Seti, soyedineniya, otkrytyye porty, Ping i szros TCP/IP (CMD)"
set "T_SUB9=Konsoli administrirovaniya i sistemnyye instrumenty (CMD)"
set "T_SUB10=Rasshirennaya bezopasnost', uchenyye zapisi i sbros paroley (CMD)"
set "T_SUB11=Proizvoditel'nost', protsessy, pamyat' i prinuditel'noye zaversheniye (CMD)"
set "T_SUB12=Informatsiya ob apparatnom obespechenii, SMART SSD/HDD i otchet (CMD)"
set "T_SUB13=Razvertyvaniye PO i massovaya ustanovka cherez WinGet (CMD)"
set "T_SUB14=Upravleniye pitaniyem, vyklyucheniye i taymery (CMD)"
set "T_SUB15=Rasshirenyye utility PowerShell (Kopirovat' / Zapustit')"

set "DUP_TITLE=RASSHIRENNYY POISK DUBLIKATOV FAYLOV (SHA256)"
set "DUP_PATH=> Put' dlya skanirovaniya (naprimer, C:\ ili F:\): "
set "DUP_OPT1=Foto (*.jpg, *.png, *.webp, *.raw...)"
set "DUP_OPT2=Video (*.mp4, *.mkv, *.avi, *.mov...)"
set "DUP_OPT3=Audio / Muzyka (*.mp3, *.flac, *.wav, *.aac...)"
set "DUP_OPT4=Dokumenty (*.pdf, *.docx, *.xlsx, *.txt...)"
set "DUP_OPT5= Arkhivy / PO (*.zip, *.rar, *.7z, *.exe, *.msi...)"
set "DUP_OPT6=GLOBAL'NYY POISK PO VSEM FORMATAM (*.*)"
set "DUP_SEL=> Vyberite tip fayla (1-6): "
set "DUP_ACTION=Chto vy khotite sdelat' s dublikatami faylov?"
set "DUP_ACT1=1. Avtomaticheski udalit' dublikaty"
set "DUP_ACT2=2. Peremestit' dublikaty v papku karantina/rezerva"
set "DUP_ACT3=3. Eksportirovat' spisok v TXT (Tolko otchet)"
set "DUP_ACT_SEL=> Vyberite deystviye (1-3): "

set "S1_1=Otkryt' obshchuyu nastroymu sistemy (CMD)"
set "S1_2=Otkryt' set' i internet / Wi-Fi (CMD)"
set "S1_3=Otkryt' Windows Update / Obnovleniya (CMD)"
set "S1_4=Otkryt' Bluetooth i ustroystva (CMD)"
set "S1_5=Otkryt' uchenyye zapisi polzovateley (CMD)"
set "S1_6=Otkryt' klassicheskuyu panel' upravleniya (CMD)"
set "S1_7=Otkryt' klassicheskiye setivyye soyedineniya (CMD)"
set "S1_8=Otkryt' programmy i komponenty (CMD)"

set "S2_1=Prochitat' litsenzionnyy klyuch iz BIOS / Materinskoy platy (OEM) (CMD)"
set "S2_2=Podrobnyy status aktivatsii na ekrane (CMD/VBS)"
set "S2_3=Proverit' srok deystviya litsenzii (CMD/VBS)"
set "S2_4=Izmenit' / Ustanovit' novyy klyuch produkta (CMD/VBS)"
set "S2_5=Prinuditelnaya aktivatsiya cherez internet (CMD/VBS)"

set "S3_1=EKSPORTIROVAT'/Spasti VSE drayvery s pk v papku (CMD)"
set "S3_2=IMPORTIROVAT'/Ustanovit' massovo drayvery (.inf) (CMD)"
set "S3_3=VNESTI OFLayn-drayvery v Windows cherez Shift + F10 (CMD)"
set "S3_4=Zapustit' sluzhby provodnoy seti v Shift + F10 (CMD)"
set "S3_5=Spisok storonnikh drayverov v obraze (CMD)"
set "S3_6=Otkryt' graficheskiy dispetcher ustroystv (CMD)"

set "S4_1=Ochistit' vremennyye fayly (CMD)"
set "S4_2=Ochistit' zagruzki Windows Update (CMD)"
set "S4_3=Zapustit' offitsialnuyu ochistku diska (CMD)"
set "S4_4=Otklyuchit' rezhym gibernatsii i osvobodit' mesto (CMD)"

set "S5_1=Skanirovaniye i vosstanovleniye sistemnykh faylov (CMD)"
set "S5_2=Remont obraza Windows online (CMD)"
set "S5_3=Remont obraza Windows offline v Shift + F10 (CMD)"
set "S5_4=Vosstanovit' rezervnuyu kopiyu reyestra (CMD)"
set "S5_5=Sbros setevykh komponentov (CMD)"

set "S6_1=Skanirovaniye oshibok faylov na diske (CMD)"
set "S6_2=Glubokiy skan i remont povrezhdennykh sektorov (CMD)"
set "S6_3=Rasshirennyy poisk dublikatov (Multi-Format / Deystviya)"
set "S6_4=Otkryt' Diskpart dlya razbiyeniya diskov (CMD)"
set "S6_5=Vosstanovit' zagruzochnyy sektor MBR (CMD)"
set "S6_6=Vosstanovit' khranilishche BCD (CMD)"
set "S6_7=Vosstanovit' razdel EFI / UEFI zagruzku (CMD)"
set "S6_8=Spisok diskov i unikalnykh tomov (CMD)"

set "S7_1=Rezervnaya kopiya C:\Users na vneshniy disk (CMD)"
set "S7_2=Inkremetalnaya kopiya Dokumentov i Izobrazheniy (CMD)"
set "S7_3=Polnoye zerkalnoye klonirovaniye mezhdu papkami ili diskami (CMD)"
set "S7_4=Sozdat' obraz rezervnogo kopirovaniya sistemy (CMD)"

set "S8_1=Prosmotr IP i polnykh dannykh setevykh adapterov (CMD)"
set "S8_2=Ochistit' kesh razresheniya DNS (CMD)"
set "S8_3= Odobrit' obnovleniye IP-adresov (CMD)"
set "S8_4=Prosmotr aktivnykh soyedineniy i portov (CMD)"
set "S8_5=Nepreryvnyy test Ping do Google (CMD)"
set "S8_6=Prosmotr tablitsy ARP i MAC-adresov lokalnoy seti (CMD)"
set "S8_7=Prosmotr sokhranyonnykh Wi-Fi setey (CMD)"

set "S9_1=Dispetcher ustroystv (CMD)"
set "S9_2=Upravleniye komp'yuterom (CMD)"
set "S9_3=Upravleniye diskami (CMD)"
set "S9_4=Sluzhby Windows (CMD)"
set "S9_5=Prosmotr sobytiy Windows (CMD)"
set "S9_6=Redaktor reyestra Windows (CMD)"
set "S9_7=Monitor resursov (CMD)"
set "S9_8=Redaktor lokalnoy gruppovoy politiki (CMD)"

set "S10_1=Spisok vsekh uchebnykh zapisey na etom PK (CMD)"
set "S10_2=Izmenit' parol' lokalnoy uchetnoy zapisi bez tekushchego (CMD)"
set "S10_3=Razblokirovat' uchetnuyu zapis' (CMD)"
set "S10_4=Vklyuchit' skrytuyu uchetnuyu zapis' Administratora (CMD)"
set "S10_5=Sozdat' novogo lokalnogo administratora (CMD)"
set "S10_6=Udalit' polzovatelya iz sistemy (CMD)"

set "S11_1=Spisok vsekh aktivnykh protsessov v pamyati (CMD)"
set "S11_2=Zakryt' protsess po imeni (CMD)"
set "S11_3=Zakryt' protsess po nomeru PID (CMD)"

set "S12_1=Sostoyanie zdorov'ya SMART diskov (CMD)"
set "S12_2=SREDSTVO GENERATSII TEKHNICHESKOGO OTHCHETA na Rabochiy stol (CMD)"
set "S12_3=Detali protsessora CPU (CMD)"
set "S12_4=Detali ustanovlennoy operativnoy pamyati RAM (CMD)"
set "S12_5=Detali materinskoy platy i BIOS (CMD)"
set "S12_6=Seriynyy nomer oborudovaniya (CMD)"
set "S12_7=Sgenerirovat' polnyy otchet MSINFO32 (CMD)"

set "S13_1=Ustanovit' bazovyy paket cherez WinGet: Chrome, 7Zip, VLC, PDF (CMD)"
set "S13_2=Ustanovit' konkretnuyu programmu po ID WinGet (CMD)"

set "S14_1=Zaplanirovat' vyklyucheniye PK v sekundakh (CMD)"
set "S14_2=Otmenit' zaplanirovannoye vyklyucheniye (CMD)"
set "S14_3=Sgenerirovat' podrobnyy HTML-otchet o bataree (CMD)"
set "S14_4=Perezagruzit' sistemu nemedlenno (CMD)"
set "S14_5=Perezagruzit'sya pryamo v UEFI / BIOS (CMD)"

set "S15_1=Prosmotr TOP 10 protsessov po potrebleniyu RAM"
set "S15_2=Massovoye udaleniye predustanovlennogo Bloatware"
set "S15_3=Poisk i ustanovka drayverov cherez Windows Update"
set "S15_4=Proverka podklyucheniya k opredelennomu TCP portu"
set "S15_5=Ochistit' korzinu cherez PowerShell"
goto MENU_PRINCIPAL


:LANG_AR
set "T_TITLE=Al-Sukin Al-Swisry Manzano"
set "T_SUITE=MAJMUA AL-TAKHSEES WA AL-IDAARA AL-SHAMILA"
set "T_SHIFT=(Mutawaafiq ma'a Shift + F10)"
set "T_EXIT_SCRIPT=Khurooj / Ighlaq al-Script"
set "T_SELECT=> Ikhtar far' (0-15): "
set "T_BACK=0. Al-Awdah ila al-Qaa'imah al-Ra'eesiyyah"
set "T_SEL_OP=> Ikhtar khiyaar: "

set "T_SUB1=Wusool saree' ila lawhaat al-ta'deel al-rasmiyyah (CMD)"
set "T_SUB2=Rukhas Windows, miftah BIOS/OEM wa halat al-taf'eel (CMD)"
set "T_SUB3=Idaarat, nuskhat ihtiyaatiyya wa haqan al- ta'reefaat (CMD)"
set "T_SUB4=Al-Siyanah, al-tanzeef wa tawfeer al-misaaha (CMD)"
set "T_SUB5=Islah al-nizaam, al-malaffat wa al-sijill (CMD)"
set "T_SUB6=Idaarat al-aqraas, UEFI/GPT wa baahith al-mutakarriraat (CMD/PS)"
set "T_SUB7=Al-Istirja', al-nuskhat al-ihtiyaatiyya wa al-nasikh (CMD)"
set "T_SUB8=Al-Shabakaat, al-ittisaalaat, al-manaafidh al-maftouhah, Ping wa Islah TCP/IP (CMD)"
set "T_SUB9=Wahaat al-idaarah wa adawaat al-nizaam (CMD)"
set "T_SUB10=Al-Amn al-mutaqaddim, hisaabaat al-mukhdam wa i'aadat ta'yeen kalimat al-murror (CMD)"
set "T_SUB11=Al-Adaa', al-amaliyaat, al-zakirah wa al-ighlaq al-ijbari (CMD)"
set "T_SUB12=Ma'lumaat al-hardware, sihat SMART SSD/HDD wa taqreer taqni (CMD)"
set "T_SUB13=Nashr al-baramij wa al-tathbeet al-jama'i 'abra WinGet (CMD)"
set "T_SUB14=Tahakkum fi al-taqaqa, al-ighlaq wa al-muwaaqit (CMD)"
set "T_SUB15=Adawaat PowerShell al-mutaqaddimah (Nasikh / Tashgheel)"

set "DUP_TITLE=BAAHITH AL-MALAFFAT AL-MUTAKARRIRAH (SHA256)"
set "DUP_PATH=> Al-Masaar lil-fahs (mithl C:\ aw F:\): "
set "DUP_OPT1=Suwar (*.jpg, *.png, *.webp, *.raw...)"
set "DUP_OPT2=Fidiyuhat (*.mp4, *.mkv, *.avi, *.mov...)"
set "DUP_OPT3=Sawtiyyat / Musiqa (*.mp3, *.flac, *.wav, *.aac...)"
set "DUP_OPT4=Wathaiq (*.pdf, *.docx, *.xlsx, *.txt...)"
set "DUP_OPT5=Malaffat madhghootah / Baramij (*.zip, *.rar, *.7z, *.exe, *.msi...)"
set "DUP_OPT6=BAHATH SHAMIL LI-JAMEE' AL-SIGHAR (*.*)"
set "DUP_SEL=> Ikhtiyar nawo' al-malaf (1-6): "
set "DUP_ACTION=Madha tureed an taf'al bi-al-malaffat al-mutakarrirah?"
set "DUP_ACT1=1. Hadhaf al-takrar tilqaa'iyyan"
set "DUP_ACT2=2. Naql al-takrar ila mujallad hijrah/ihtiyaati"
set "DUP_ACT3=3. Tasdeer qaimah al-takrar ila TXT (Taqreer faqat)"
set "DUP_ACT_SEL=> Ikhtar al-ijra' (1-3): "

set "S1_1=Fath i'daadad al-nizaam al-aamah (CMD)"
set "S1_2=Fath al-shabakah wa al-internet / Wi-Fi (CMD)"
set "S1_3=Fath Windows Update / Al-Tahdeethat (CMD)"
set "S1_4=Fath Bluetooth wa al-ajhizah (CMD)"
set "S1_5=Fath hisaabaat al-mustakhdim (CMD)"
set "S1_6=Fath lawhat al-tahakkum al-klaasikiyyah (CMD)"
set "S1_7=Fath ittisaalaat al-shabakah al-klaasikiyyah (CMD)"
set "S1_8=Fath al-baramij wa al-khasaa'is (CMD)"

set "S2_1=Qiraa'at miftah al-rukhsah al-mukhtazan fi al-BIOS / Motherboard (OEM) (CMD)"
set "S2_2=Halat al-taf'eel al-mufassalah 'ala al-shaashah (CMD/VBS)"
set "S2_3=Fahs tareekh intihaa' al-rukhsah (CMD/VBS)"
set "S2_4=Taghyeer / Tathbeet miftah muntaj jadeed (CMD/VBS)"
set "S2_5=Tafeer al-taf'eel 'abra al-internet (CMD/VBS)"

set "S3_1=Tasdeer/Inqadh JAMEE' ta'reefaat al-jihaz ila mujallad (CMD)"
set "S3_2=Istiraad/Tathbeet jama'i lil-ta'reefaat al-musta'adah (.inf) (CMD)"
set "S3_3=Haqn ta'reefaat offline ila Windows fi Shift + F10 (CMD)"
set "S3_4=Bad' khadamaat al-shabakah al-silkiyyah fi Shift + F10 (CMD)"
set "S3_5=I'daad ta'reefaat al-taraf al-thalith al-muthabbitah (CMD)"
set "S3_6=Fath mudeer al-ajhizah al-rasmi (CMD)"

set "S4_1=Tafreegh al-malaffat al-muwaqqatah (CMD)"
set "S4_2=Tanzeef tahmeelaat Windows Update (CMD)"
set "S4_3=Tashgheel mudeer tanzeef al-qirs al-rasmi (CMD)"
set "S4_4=Ta'teel al-subat wa tawfeer al-misaaha (CMD)"

set "S5_1=Fahs wa islah malaffat al-nizaam (CMD)"
set "S5_2=Islah soorat Windows 'abra al-internet (CMD)"
set "S5_3=Islah soorat Windows offline fi Shift + F10 (CMD)"
set "S5_4=Isti'aadah nuskhat ihtiyaatiyya lil-sijill (CMD)"
set "S5_5=I'aadat dabt mukawwinaat al-shabakah (CMD)"

set "S6_1=Fahs akhta' al-malaffat 'ala al-qirs (CMD)"
set "S6_2=Fahs 'ameeq wa islah al-qita'aat al-talifah (CMD)"
set "S6_3=Baahith al-malaffat al-mutakarrirah al-mutaqaddim (Muta'addid al-Sighar)"
set "S6_4=Fath Diskpart li-taqseem al-aqraas (CMD)"
set "S6_5=I'aadat bina' qita' al-iqlac MBR (CMD)"
set "S6_6=I'aadat bina' matjar al-iqlac BCD (CMD)"
set "S6_7=I'aadat bina' qism EFI / Iqlac UEFI (CMD)"
set "S6_8=I'daad al-aqraas wa al-wahdaat al-muthabbitah (CMD)"

set "S7_1=Nuskhat ihtiyaatiyya lil-mujallad C:\Users ila qirs khaariji (CMD)"
set "S7_2=Nuskhat tadreejiyyah lil-wathaiq wa al-suwar (CMD)"
set "S7_3=Nasikh miraa'i kamil bayna al-mujalladaat aw al-aqraas (CMD)"
set "S7_4=Inshaa' soorat nuskhat ihtiyaatiyya lil-nizaam al-kaamil (CMD)"

set "S8_1=Ru'yat IP wa ma'lumaat shabakah al-ittisaal al-kaamilah (CMD)"
set "S8_2=Tafreegh cache hall DNS (CMD)"
set "S8_3=Tajdeed ta'yeen 'unwan IP (CMD)"
set "S8_4=Ru'yat al-ittisaalaat al-nashitah wa al-manaafidh al-mustakhdamah (CMD)"
set "S8_5=Ikhtibar Ping mustamirr ila Google (CMD)"
set "S8_6=Ru'yat jadwal ARP wa 'anawin MAC lil-shabakah al-mahalliyyah (CMD)"
set "S8_7=Ru'yat milaffat shabakaat Wi-Fi al-mahfoudhah 'ala al-jihaz (CMD)"

set "S9_1=Mudeer al-ajhizah (CMD)"
set "S9_2=Idaarat al-hasoub (CMD)"
set "S9_3=Idaarat al-aqraas (CMD)"
set "S9_4=Khadamaat Windows (CMD)"
set "S9_5=Aarid ahdath Windows (CMD)"
set "S9_6=Muharrir sijill Windows (CMD)"
set "S9_7=Muraqib al-mawarid (CMD)"
set "S9_8=Muharrir siyaasat al-majmoo'ah al-mahalliyyah (CMD)"

set "S10_1=I'daad jamee' hisaabaat al-mustakhdim 'ala hadha al-jihaz (CMD)"
set "S10_2=Taghyeer kalimat murror al-hisaab al-mahalli douna ma'rifat al-haliyyah (CMD)"
set "S10_3=Fakk qulfl hisaab al-mustakhdim (CMD)"
set "S10_4=Taf'eel hisaab al-mudeer al-asli al-makhfi (CMD)"
set "S10_5=Inshaa' mustakhdim mudeer mahalli jadeed (CMD)"
set "S10_6=Hadhaf mustakhdim min al-nizaam (CMD)"

set "S11_1=I'daad jamee' al-amaliyaat al-nashitah fi al-zakirah (CMD)"
set "S11_2=Ighlaq 'amaliyyah bi-ismuha (CMD)"
set "S11_3=Ighlaq 'amaliyyah bi-raqm PID (CMD)"

set "S12_1=Halat sihat SMART lil-aqraas (CMD)"
set "S12_2=Tawleed taqreer taqni lil-jihaz 'ala al-desktop (CMD)"
set "S12_3=Tafaaseel mu'alij CPU (CMD)"
set "S12_4=Tafaaseel zakirat RAM al-muthabbitah (CMD)"
set "S12_5=Tafaaseel al-lwhah al-umm wa al-BIOS (CMD)"
set "S12_6=Raqm musalsal lil-jihaz (CMD)"
set "S12_7=Tawleed taqreer MSINFO32 kamil (CMD)"

set "S13_1=Tathbeet al-majmoo'ah al-asasiyyah 'abra WinGet: Chrome, 7Zip, VLC, PDF (CMD)"
set "S13_2=Tathbeet barnamaj mukhasas 'abra idkhil ID WinGet (CMD)"

set "S14_1=Jadwal ighlaq al-jihaz bi-al-thawaani (CMD)"
set "S14_2=Ilgha' al-ighlaq al-mujaddal (CMD)"
set "S14_3=Tawleed taqreer sihat al-bitaariyyah mufassal fi HTML (CMD)"
set "S14_4=I'aadat tashgheel al-nizaam fawran (CMD)"
set "S14_5=I'aadat tashgheel mubasharah ila shaashah UEFI / BIOS (CMD)"

set "S15_1=Ru'yat a'la 10 amaliyaat tustahlik RAM"
set "S15_2=Muzil al-baramij al-zaa'idah al-muthabbitah musbaqan"
set "S15_3=Al-Bahth 'an wa tathbeet al-ta'reefaat al-mu'allaqah 'abra Windows Update"
set "S15_4=Ikhtibar al-ittisal bi-manfadh TCP mukhasas"
set "S15_5=Tafreegh sillah al-muhmalat 'abra PowerShell"
goto MENU_PRINCIPAL


:: =========================================================================
:: MENU PRINCIPAL DINAMICO
:: =========================================================================
:MENU_PRINCIPAL
color 0A
cls
echo =======================================================================
echo                 !T_TITLE!
echo        !T_SUITE!
echo                   !T_SHIFT!
echo =======================================================================
echo   [1] !T_SUB1!
echo   [2] !T_SUB2!
echo   [3] !T_SUB3!
echo   [4] !T_SUB4!
echo   [5] !T_SUB5!
echo   [6] !T_SUB6!
echo   [7] !T_SUB7!
echo   [8] !T_SUB8!
echo   [9] !T_SUB9!
echo  [10] !T_SUB10!
echo  [11] !T_SUB11!
echo  [12] !T_SUB12!
echo  [13] !T_SUB13!
echo  [14] !T_SUB14!
echo  [15] !T_SUB15!
echo  [99] [Change Language / Cambiar Idioma]
echo   [0] !T_EXIT_SCRIPT!
echo =======================================================================
set "opt="
set /p opt="!T_SELECT!"

if "%opt%"=="1" goto SUB_CONFIGURACION
if "%opt%"=="2" goto SUB_LICENCIAS
if "%opt%"=="3" goto SUB_DRIVERS
if "%opt%"=="4" goto SUB_LIMPIEZA
if "%opt%"=="5" goto SUB_REPARACION
if "%opt%"=="6" goto SUB_DISCOS
if "%opt%"=="7" goto SUB_BACKUP
if "%opt%"=="8" goto SUB_REDES
if "%opt%"=="9" goto SUB_MMC
if "%opt%"=="10" goto SUB_SEGURIDAD
if "%opt%"=="11" goto SUB_PROCESOS
if "%opt%"=="12" goto SUB_HARDWARE
if "%opt%"=="13" goto SUB_DESPLIEGUE
if "%opt%"=="14" goto SUB_ENERGIA
if "%opt%"=="15" goto SUB_PS_UTILIDADES
if "%opt%"=="99" goto MENU_IDIOMA
if "%opt%"=="0" exit
goto MENU_PRINCIPAL

:: =========================================================================
:: RAMA 1: CONFIGURACION GRAFICA
:: =========================================================================
:SUB_CONFIGURACION
color 0B
cls
echo =======================================================================
echo     !T_TITLE! - !T_SUB1!
echo =======================================================================
echo   [1] !S1_1!
echo   [2] !S1_2!
echo   [3] !S1_3!
echo   [4] !S1_4!
echo   [5] !S1_5!
echo   [6] !S1_6!
echo   [7] !S1_7!
echo   [8] !S1_8!
echo   [0] !T_BACK!
echo =======================================================================
set "sub_conf="
set /p sub_conf="!T_SEL_OP!"

if "%sub_conf%"=="1" ( start ms-settings: & goto SUB_CONFIGURACION )
if "%sub_conf%"=="2" ( start ms-settings:network & goto SUB_CONFIGURACION )
if "%sub_conf%"=="3" ( start ms-settings:windowsupdate & goto SUB_CONFIGURACION )
if "%sub_conf%"=="4" ( start ms-settings:bluetooth & goto SUB_CONFIGURACION )
if "%sub_conf%"=="5" ( start ms-settings:accounts & goto SUB_CONFIGURACION )
if "%sub_conf%"=="6" ( start control.exe & goto SUB_CONFIGURACION )
if "%sub_conf%"=="7" ( start ncpa.cpl & goto SUB_CONFIGURACION )
if "%sub_conf%"=="8" ( start appwiz.cpl & goto SUB_CONFIGURACION )
if "%sub_conf%"=="0" goto MENU_PRINCIPAL
goto SUB_CONFIGURACION

:: =========================================================================
:: RAMA 2: LICENCIAS Y ACTIVACION
:: =========================================================================
:SUB_LICENCIAS
color 0A
cls
echo =======================================================================
echo     !T_TITLE! - !T_SUB2!
echo =======================================================================
echo   [1] !S2_1!
echo   [2] !S2_2!
echo   [3] !S2_3!
echo   [4] !S2_4!
echo   [5] !S2_5!
echo   [0] !T_BACK!
echo =======================================================================
set "sub4="
set /p sub4="!T_SEL_OP!"

if "%sub4%"=="1" (
    echo. & echo [!] Scanning OEM key...
    wmic path softwarelicensingservice get OA3xOriginalProductKey 2>nul
    powershell -NoProfile -Command "(Get-CimInstance -Query 'select * from SoftwareLicensingService').OA3xOriginalProductKey" 2>nul
    pause & goto SUB_LICENCIAS
)
if "%sub4%"=="2" ( cscript //nologo C:\Windows\System32\slmgr.vbs /dlv & pause & goto SUB_LICENCIAS )
if "%sub4%"=="3" ( cscript //nologo C:\Windows\System32\slmgr.vbs /xpr & pause & goto SUB_LICENCIAS )
if "%sub4%"=="4" (
    set "mykey="
    set /p mykey="> Key (XXXXX-XXXXX-XXXXX-XXXXX-XXXXX): "
    if defined mykey cscript //nologo C:\Windows\System32\slmgr.vbs /ipk !mykey!
    pause & goto SUB_LICENCIAS
)
if "%sub4%"=="5" ( cscript //nologo C:\Windows\System32\slmgr.vbs /ato & pause & goto SUB_LICENCIAS )
if "%sub4%"=="0" goto MENU_PRINCIPAL
goto SUB_LICENCIAS

:: =========================================================================
:: RAMA 3: CONTROLADORES Y DRIVERS
:: =========================================================================
:SUB_DRIVERS
color 0B
cls
echo =======================================================================
echo     !T_TITLE! - !T_SUB3!
echo =======================================================================
echo   [1] !S3_1!
echo   [2] !S3_2!
echo   [3] !S3_3!
echo   [4] !S3_4!
echo   [5] !S3_5!
echo   [6] !S3_6!
echo   [0] !T_BACK!
echo =======================================================================
set "sub5="
set /p sub5="!T_SEL_OP!"

if "%sub5%"=="1" (
    set "drvdest="
    set /p drvdest="> Destination path (e.g. E:\Drivers): "
    if defined drvdest dism /online /export-driver /destination:"!drvdest!"
    pause & goto SUB_DRIVERS
)
if "%sub5%"=="2" (
    set "drvsrc="
    set /p drvsrc="> Drivers folder path: "
    if defined drvsrc (
        echo. & echo Installing drivers...
        pnputil /add-driver "!drvsrc!\*.inf" /subdirs /install
        echo [OK] Done.
    )
    pause & goto SUB_DRIVERS
)
if "%sub5%"=="3" (
    cls
    echo =======================================================================
    echo          DRIVER INJECTION (OFFLINE / SHIFT+F10)
    echo =======================================================================
    set "winpath=" & set "drvfolder="
    set /p winpath="> Windows path (e.g. C:\Windows): "
    set /p drvfolder="> Drivers folder path: "
    if defined winpath if defined drvfolder (
        dism /image:!winpath:~0,3!\ /add-driver /driver:"!drvfolder!" /recurse
        echo [OK] Done.
    )
    pause & goto SUB_DRIVERS
)
if "%sub5%"=="4" (
    echo. & echo Initializing network stack...
    wpeutil initialize-network >nul 2>&1
    net start dhcp >nul 2>&1
    net start nsi >nul 2>&1
    echo [OK] Done.
    pause & goto SUB_DRIVERS
)
if "%sub5%"=="5" ( dism /online /get-drivers /format:table & pause & goto SUB_DRIVERS )
if "%sub5%"=="6" ( start devmgmt.msc & goto SUB_DRIVERS )
if "%sub5%"=="0" goto MENU_PRINCIPAL
goto SUB_DRIVERS

:: =========================================================================
:: RAMA 4: LIMPIEZA Y MANTENIMIENTO
:: =========================================================================
:SUB_LIMPIEZA
color 0B
cls
echo =======================================================================
echo     !T_TITLE! - !T_SUB4!
echo =======================================================================
echo   [1] !S4_1!
echo   [2] !S4_2!
echo   [3] !S4_3!
echo   [4] !S4_4!
echo   [0] !T_BACK!
echo =======================================================================
set "sub1="
set /p sub1="!T_SEL_OP!"

if "%sub1%"=="1" (
    echo. & echo Cleaning temps...
    del /q /f /s "%TEMP%\*" >nul 2>&1
    del /q /f /s "C:\Windows\Temp\*" >nul 2>&1
    del /q /f /s "C:\Windows\Prefetch\*" >nul 2>&1
    echo [OK] Done.
    pause & goto SUB_LIMPIEZA
)
if "%sub1%"=="2" (
    echo. & echo Stopping update services...
    net stop wuauserv >nul 2>&1
    net stop bits >nul 2>&1
    del /f /q /s C:\Windows\SoftwareDistribution\Download\* >nul 2>&1
    net start wuauserv >nul 2>&1
    net start bits >nul 2>&1
    echo [OK] Done.
    pause & goto SUB_LIMPIEZA
)
if "%sub1%"=="3" ( cleanmgr /sagerun:1 & pause & goto SUB_LIMPIEZA )
if "%sub1%"=="4" ( powercfg /hibernate off & echo [OK] Hibernation disabled. & pause & goto SUB_LIMPIEZA )
if "%sub1%"=="0" goto MENU_PRINCIPAL
goto SUB_LIMPIEZA

:: =========================================================================
:: RAMA 5: REPARACION DE SISTEMA
:: =========================================================================
:SUB_REPARACION
color 0C
cls
echo =======================================================================
echo     !T_TITLE! - !T_SUB5!
echo =======================================================================
echo   [1] !S5_1!
echo   [2] !S5_2!
echo   [3] !S5_3!
echo   [4] !S5_4!
echo   [5] !S5_5!
echo   [0] !T_BACK!
echo =======================================================================
set "sub2="
set /p sub2="!T_SEL_OP!"

if "%sub2%"=="1" ( sfc /scannow & pause & goto SUB_REPARACION )
if "%sub2%"=="2" ( dism /online /cleanup-image /restorehealth & pause & goto SUB_REPARACION )
if "%sub2%"=="3" (
    set "winpath="
    set /p winpath="> Windows path (e.g. C:\Windows): "
    if defined winpath sfc /scannow /offbootdir=!winpath:~0,3! /offwindir=!winpath!
    pause & goto SUB_REPARACION
)
if "%sub2%"=="4" (
    echo Restoring registry...
    copy C:\Windows\System32\config\RegBack\* C:\Windows\System32\config\ /y
    echo [OK] Done.
    pause & goto SUB_REPARACION
)
if "%sub2%"=="5" (
    netsh winsock reset >nul
    netsh int ip reset >nul
    echo [OK] Network reset. Please reboot.
    pause & goto SUB_REPARACION
)
if "%sub2%"=="0" goto MENU_PRINCIPAL
goto SUB_REPARACION

:: =========================================================================
:: RAMA 6: DISCOS Y DUPLICADOS (AMPLIADO MULTI-FORMATO Y ACCIONES)
:: =========================================================================
:SUB_DISCOS
color 0E
cls
echo =======================================================================
echo     !T_TITLE! - !T_SUB6!
echo =======================================================================
echo   [1] !S6_1!
echo   [2] !S6_2!
echo   [3] !S6_3!
echo   [4] !S6_4!
echo   [5] !S6_5!
echo   [6] !S6_6!
echo   [7] !S6_7!
echo   [8] !S6_8!
echo   [0] !T_BACK!
echo =======================================================================
set "sub3="
set /p sub3="!T_SEL_OP!"

if "%sub3%"=="1" ( chkdsk C: & pause & goto SUB_DISCOS )
if "%sub3%"=="2" ( chkdsk C: /f /r & pause & goto SUB_DISCOS )
if "%sub3%"=="3" goto RUN_DUP_FINDER
if "%sub3%"=="4" ( diskpart & goto SUB_DISCOS )
if "%sub3%"=="5" ( bootrec /fixmbr & bootrec /fixboot & pause & goto SUB_DISCOS )
if "%sub3%"=="6" ( bootrec /rebuildbcd & pause & goto SUB_DISCOS )
if "%sub3%"=="7" (
    set "efiletter="
    set /p efiletter="> EFI Partition letter (e.g. S:): "
    if defined efiletter bcdboot C:\Windows /l es-es /s !efiletter! /f ALL
    pause & goto SUB_DISCOS
)
if "%sub3%"=="8" ( wmic logicaldisk get caption,description,freespace,size & pause & goto SUB_DISCOS )
if "%sub3%"=="0" goto MENU_PRINCIPAL
goto SUB_DISCOS

:RUN_DUP_FINDER
cls
echo =======================================================================
echo         !DUP_TITLE!
echo =======================================================================
set "scanpath="
set /p scanpath="!DUP_PATH!"
if not defined scanpath goto SUB_DISCOS

echo.
echo   [1] !DUP_OPT1!
echo   [2] !DUP_OPT2!
echo   [3] !DUP_OPT3!
echo   [4] !DUP_OPT4!
echo   [5] !DUP_OPT5!
echo   [6] !DUP_OPT6!
set "scantype="
set /p scantype="!DUP_SEL!"

echo.
echo   !DUP_ACTION!
echo   !DUP_ACT1!
echo   !DUP_ACT2!
echo   !DUP_ACT3!
set "dupaction="
set /p dupaction="!DUP_ACT_SEL!"

set "PSFILE=%TEMP%\DupFinderEngine.ps1"
if exist "%PSFILE%" del /f /q "%PSFILE%" >nul 2>&1

echo $r = "%scanpath%" > "%PSFILE%"
echo $t = "%scantype%" >> "%PSFILE%"
echo $act = "%dupaction%" >> "%PSFILE%"
echo if (-not (Test-Path $r)) { Write-Host "Path does not exist." -ForegroundColor Red; exit } >> "%PSFILE%"
echo $ext = switch($t) { ^
    '1' { '*.jpg','*.jpeg','*.png','*.webp','*.raw','*.cr2','*.nef' } ^
    '2' { '*.mp4','*.mkv','*.avi','*.mov','*.wmv','*.flv' } ^
    '3' { '*.mp3','*.flac','*.wav','*.aac','*.ogg','*.m4a' } ^
    '4' { '*.pdf','*.docx','*.xlsx','*.txt','*.pptx','*.odt','*.csv' } ^
    '5' { '*.zip','*.rar','*.7z','*.exe','*.msi','*.iso','*.cab' } ^
    Default { '*.*' } ^
} >> "%PSFILE%"
echo Write-Host "Scanning files in $r ..." -ForegroundColor Yellow >> "%PSFILE%"
echo $files = Get-ChildItem -Path $r -Recurse -File -Include $ext -ErrorAction SilentlyContinue >> "%PSFILE%"
echo if (-not $files) { Write-Host "No files found with this filter." -ForegroundColor Red; exit } >> "%PSFILE%"
echo Write-Host "Total files to evaluate: $($files.Count)" -ForegroundColor Yellow >> "%PSFILE%"
echo $i = 0 >> "%PSFILE%"
echo $hashes = foreach ($f in $files) { >> "%PSFILE%"
echo     $i++ >> "%PSFILE%"
echo     Write-Progress -Activity 'Computing SHA256 Hash' -Status "$i of $($files.Count)" -PercentComplete (($i / $($files.Count)) * 100) >> "%PSFILE%"
echo     Get-FileHash -Path $f.FullName -Algorithm SHA256 -ErrorAction SilentlyContinue >> "%PSFILE%"
echo } >> "%PSFILE%"
echo $dups = $hashes ^| Group-Object -Property Hash ^| Where-Object { $_.Count -gt 1 } >> "%PSFILE%"
echo if (-not $dups) { Write-Host "No duplicate files found." -ForegroundColor Green; exit } >> "%PSFILE%"
echo $toProcess = @() >> "%PSFILE%"
echo foreach ($g in $dups) { >> "%PSFILE%"
echo     Write-Host "`n[KEEP]: $($g.Group[0].Path)" -ForegroundColor Green >> "%PSFILE%"
echo     for ($j = 1; $j -lt $g.Group.Count; $j++) { >> "%PSFILE%"
echo         Write-Host "[DUPLICATE]: $($g.Group[$j].Path)" -ForegroundColor Red >> "%PSFILE%"
echo         $toProcess += $g.Group[$j].Path >> "%PSFILE%"
echo     } >> "%PSFILE%"
echo } >> "%PSFILE%"
echo Write-Host "`nTotal duplicates detected: $($toProcess.Count)" -ForegroundColor Yellow >> "%PSFILE%"
echo if ($act -eq '1') { >> "%PSFILE%"
echo     $ans = Read-Host 'Confirm automatic deletion? (Type S to delete)' >> "%PSFILE%"
echo     if ($ans -eq 'S' -or $ans -eq 's') { >> "%PSFILE%"
echo         $toProcess ^| Remove-Item -Force -ErrorAction SilentlyContinue >> "%PSFILE%"
echo         Write-Host "Duplicate files successfully deleted." -ForegroundColor Green >> "%PSFILE%"
echo     } else { Write-Host "Operation cancelled." -ForegroundColor Yellow } >> "%PSFILE%"
echo } elseif ($act -eq '2') { >> "%PSFILE%"
echo     $qFolder = "C:\Quarantine_Duplicates_" + (Get-Date -Format "yyyyMMdd_HHmmss") >> "%PSFILE%"
echo     New-Item -ItemType Directory -Path $qFolder ^| Out-Null >> "%PSFILE%"
echo     foreach ($p in $toProcess) { Move-Item -Path $p -Destination $qFolder -ErrorAction SilentlyContinue } >> "%PSFILE%"
echo     Write-Host "Duplicates moved to quarantine folder: $qFolder" -ForegroundColor Green >> "%PSFILE%"
echo } else { >> "%PSFILE%"
echo     $txtReport = "$HOME\Desktop\Duplicates_Report.txt" >> "%PSFILE%"
echo     $toProcess ^| Out-File -FilePath $txtReport >> "%PSFILE%"
echo     Write-Host "Report exported to Desktop: $txtReport" -ForegroundColor Green >> "%PSFILE%"
echo } >> "%PSFILE%"

echo.
powershell -NoProfile -ExecutionPolicy Bypass -File "%PSFILE%"
if exist "%PSFILE%" del /f /q "%PSFILE%" >nul 2>&1
echo.
pause
goto SUB_DISCOS

:: =========================================================================
:: RAMA 7: RECUPERACION Y RESPALDOS
:: =========================================================================
:SUB_BACKUP
color 0E
cls
echo =======================================================================
echo     !T_TITLE! - !T_SUB7!
echo =======================================================================
echo   [1] !S7_1!
echo   [2] !S7_2!
echo   [3] !S7_3!
echo   [4] !S7_4!
echo   [0] !T_BACK!
echo =======================================================================
set "sub6="
set /p sub6="!T_SEL_OP!"

if "%sub6%"=="1" (
    set "dest="
    set /p dest="> Destination path (e.g. E:\Backup): "
    if defined dest robocopy "C:\Users" "!dest!\Users" /E /ZB /R:1 /W:1 /COPYALL
    pause & goto SUB_BACKUP
)
if "%sub6%"=="2" (
    set "dest=" & set "usr="
    set /p dest="> Destination path (e.g. E:\Files): "
    set /p usr="> Exact username: "
    if defined usr robocopy "C:\Users\!usr!\Documents" "!dest!\Documents" /E /XO /R:1 /W:1
    if defined usr robocopy "C:\Users\!usr!\Pictures" "!dest!\Pictures" /E /XO /R:1 /W:1
    pause & goto SUB_BACKUP
)
if "%sub6%"=="3" (
    set "origen=" & set "destino=" & set "conf="
    set /p origen="> Source path (e.g. D:\): "
    set /p destino="> Destination path (e.g. F:\): "
    echo [!] WARNING: This will delete files in destination not present in source.
    set /p conf="> Confirm by typing S: "
    if /i "!conf!"=="S" robocopy "!origen!" "!destino!" /MIR /R:1 /W:1 /MT:8
    pause & goto SUB_BACKUP
)
if "%sub6%"=="4" (
    set "drive="
    set /p drive="> Destination drive (e.g. E:): "
    if defined drive wbadmin start backup -backupTarget:!drive! -include:C: -allCritical -quiet
    pause & goto SUB_BACKUP
)
if "%sub6%"=="0" goto MENU_PRINCIPAL
goto SUB_BACKUP

:: =========================================================================
:: RAMA 8: REDES Y PUERTOS
:: =========================================================================
:SUB_REDES
color 0B
cls
echo =======================================================================
echo     !T_TITLE! - !T_SUB8!
echo =======================================================================
echo   [1] !S8_1!
echo   [2] !S8_2!
echo   [3] !S8_3!
echo   [4] !S8_4!
echo   [5] !S8_5!
echo   [6] !S8_6!
echo   [7] !S8_7!
echo   [0] !T_BACK!
echo =======================================================================
set "sub7="
set /p sub7="!T_SEL_OP!"

if "%sub7%"=="1" ( ipconfig /all & pause & goto SUB_REDES )
if "%sub7%"=="2" ( ipconfig /flushdns & pause & goto SUB_REDES )
if "%sub7%"=="3" ( ipconfig /release & ipconfig /renew & pause & goto SUB_REDES )
if "%sub7%"=="4" ( netstat -ano | findstr ESTABLISHED & pause & goto SUB_REDES )
if "%sub7%"=="5" ( ping 8.8.8.8 -t & goto SUB_REDES )
if "%sub7%"=="6" ( arp -a & pause & goto SUB_REDES )
if "%sub7%"=="7" ( netsh wlan show profiles & pause & goto SUB_REDES )
if "%sub7%"=="0" goto MENU_PRINCIPAL
goto SUB_REDES

:: =========================================================================
:: RAMA 9: CONSOLAS DE ADMINISTRACION MMC
:: =========================================================================
:SUB_MMC
color 0D
cls
echo =======================================================================
echo     !T_TITLE! - !T_SUB9!
echo =======================================================================
echo   [1] !S9_1!
echo   [2] !S9_2!
echo   [3] !S9_3!
echo   [4] !S9_4!
echo   [5] !S9_5!
echo   [6] !S9_6!
echo   [7] !S9_7!
echo   [8] !S9_8!
echo   [0] !T_BACK!
echo =======================================================================
set "sub_mmc="
set /p sub_mmc="!T_SEL_OP!"

if "%sub_mmc%"=="1" ( start devmgmt.msc & goto SUB_MMC )
if "%sub_mmc%"=="2" ( start compmgmt.msc & goto SUB_MMC )
if "%sub_mmc%"=="3" ( start diskmgmt.msc & goto SUB_MMC )
if "%sub_mmc%"=="4" ( start services.msc & goto SUB_MMC )
if "%sub_mmc%"=="5" ( start eventvwr.msc & goto SUB_MMC )
if "%sub_mmc%"=="6" ( start regedit.exe & goto SUB_MMC )
if "%sub_mmc%"=="7" ( start resmon.exe & goto SUB_MMC )
if "%sub_mmc%"=="8" ( start gpedit.msc & goto SUB_MMC )
if "%sub_mmc%"=="0" goto MENU_PRINCIPAL
goto SUB_MMC

:: =========================================================================
:: RAMA 10: SEGURIDAD Y CUENTAS
:: =========================================================================
:SUB_SEGURIDAD
color 0C
cls
echo =======================================================================
echo     !T_TITLE! - !T_SUB10!
echo =======================================================================
echo   [1] !S10_1!
echo   [2] !S10_2!
echo   [3] !S10_3!
echo   [4] !S10_4!
echo   [5] !S10_5!
echo   [6] !S10_6!
echo   [0] !T_BACK!
echo =======================================================================
set "sub8="
set /p sub8="!T_SEL_OP!"

if "%sub8%"=="1" ( net user & pause & goto SUB_SEGURIDAD )
if "%sub8%"=="2" (
    set "usr=" & set "pass="
    set /p usr="> Account name: "
    set /p pass="> New password (blank to clear): "
    if defined usr net user "!usr!" "!pass!"
    pause & goto SUB_SEGURIDAD
)
if "%sub8%"=="3" (
    set "usr="
    set /p usr="> Account to unlock: "
    if defined usr net user "!usr!" /active:yes
    pause & goto SUB_SEGURIDAD
)
if "%sub8%"=="4" ( net user Administrator /active:yes & pause & goto SUB_SEGURIDAD )
if "%sub8%"=="5" (
    set "newusr=" & set "newpass="
    set /p newusr="> New username: "
    set /p newpass="> Password: "
    if defined newusr (
        net user "!newusr!" "!newpass!" /add
        net localgroup Administrators "!newusr!" /add
    )
    pause & goto SUB_SEGURIDAD
)
if "%sub8%"=="6" (
    set "delusr="
    set /p delusr="> User to delete: "
    if defined delusr net user "!delusr!" /delete
    pause & goto SUB_SEGURIDAD
)
if "%sub8%"=="0" goto MENU_PRINCIPAL
goto SUB_SEGURIDAD

:: =========================================================================
:: RAMA 11: RENDIMIENTO Y PROCESOS
:: =========================================================================
:SUB_PROCESOS
color 0D
cls
echo =======================================================================
echo     !T_TITLE! - !T_SUB11!
echo =======================================================================
echo   [1] !S11_1!
echo   [2] !S11_2!
echo   [3] !S11_3!
echo   [0] !T_BACK!
echo =======================================================================
set "sub9="
set /p sub9="!T_SEL_OP!"

if "%sub9%"=="1" ( tasklist & pause & goto SUB_PROCESOS )
if "%sub9%"=="2" (
    set "proc="
    set /p proc="> Process name (e.g. notepad.exe): "
    if defined proc taskkill /F /IM "!proc!"
    pause & goto SUB_PROCESOS
)
if "%sub9%"=="3" (
    set "pidnum="
    set /p pidnum="> PID number: "
    if defined pidnum taskkill /F /PID !pidnum!
    pause & goto SUB_PROCESOS
)
if "%sub9%"=="0" goto MENU_PRINCIPAL
goto SUB_PROCESOS

:: =========================================================================
:: RAMA 12: HARDWARE E INFORME DEL EQUIPO
:: =========================================================================
:SUB_HARDWARE
color 0A
cls
echo =======================================================================
echo     !T_TITLE! - !T_SUB12!
echo =======================================================================
echo   [1] !S12_1!
echo   [2] !S12_2!
echo   [3] !S12_3!
echo   [4] !S12_4!
echo   [5] !S12_5!
echo   [6] !S12_6!
echo   [7] !S12_7!
echo   [0] !T_BACK!
echo =======================================================================
set "sub10="
set /p sub10="!T_SEL_OP!"

if "%sub10%"=="1" (
    echo. & echo Checking SMART status...
    wmic diskdrive get model,status
    pause & goto SUB_HARDWARE
)
if "%sub10%"=="2" (
    echo. & echo Generating Tech Report on Desktop...
    set "file=%USERPROFILE%\Desktop\Tech_Report.txt"
    echo ======================================================= > "%file%"
    echo              EQUIPMENT TECHNICAL REPORT               >> "%file%"
    echo             Navaja Suiza Manzano Version              >> "%file%"
    echo ======================================================= >> "%file%"
    echo Date: %date% - Time: %time% >> "%file%"
    echo. >> "%file%"
    echo --- SYSTEM INFO AND SERIAL NUMBER --- >> "%file%"
    wmic csproduct get name,identifyingnumber,vendor >> "%file%"
    echo --- PROCESSOR --- >> "%file%"
    wmic cpu get name,numberofcores,maxclockspeed >> "%file%"
    echo --- RAM MEMORY --- >> "%file%"
    wmic memorychip get capacity,speed,manufacturer >> "%file%"
    echo --- SMART DISK STATUS --- >> "%file%"
    wmic diskdrive get model,status >> "%file%"
    echo --- OEM BIOS KEY --- >> "%file%"
    wmic path softwarelicensingservice get OA3xOriginalProductKey >> "%file%" 2>nul
    echo [OK] Report saved to: %file%
    pause & goto SUB_HARDWARE
)
if "%sub10%"=="3" ( wmic cpu get name,numberofcores,numberoflogicalprocessors,maxclockspeed & pause & goto SUB_HARDWARE )
if "%sub10%"=="4" ( wmic memorychip get capacity,speed,manufacturer,partnumber & pause & goto SUB_HARDWARE )
if "%sub10%"=="5" (
    wmic baseboard get product,manufacturer,version,serialnumber
    wmic bios get caption,version
    pause & goto SUB_HARDWARE
)
if "%sub10%"=="6" ( wmic csproduct get name,identifyingnumber,vendor & pause & goto SUB_HARDWARE )
if "%sub10%"=="7" ( start msinfo32 & goto SUB_HARDWARE )
if "%sub10%"=="0" goto MENU_PRINCIPAL
goto SUB_HARDWARE

:: =========================================================================
:: RAMA 13: DESPLIEGUE DE SOFTWARE
:: =========================================================================
:SUB_DESPLIEGUE
color 0B
cls
echo =======================================================================
echo     !T_TITLE! - !T_SUB13!
echo =======================================================================
echo   [1] !S13_1!
echo   [2] !S13_2!
echo   [0] !T_BACK!
echo =======================================================================
set "sub13="
set /p sub13="!T_SEL_OP!"

if "%sub13%"=="1" (
    echo. & echo Installing basic software package via WinGet...
    winget install --id Google.Chrome -e --accept-package-agreements --accept-source-agreements
    winget install --id 7zip.7zip -e --accept-package-agreements --accept-source-agreements
    winget install --id VideoLAN.VLC -e --accept-package-agreements --accept-source-agreements
    winget install --id Adobe.Acrobat.Reader.64-bit -e --accept-package-agreements --accept-source-agreements
    echo [OK] Done.
    pause & goto SUB_DESPLIEGUE
)
if "%sub13%"=="2" (
    set "appid="
    set /p appid="> Enter WinGet ID (e.g. Spotify.Spotify): "
    if defined appid winget install --id !appid! -e --accept-package-agreements --accept-source-agreements
    pause & goto SUB_DESPLIEGUE
)
if "%sub13%"=="0" goto MENU_PRINCIPAL
goto SUB_DESPLIEGUE

:: =========================================================================
:: RAMA 14: ENERGIA Y REINICIO
:: =========================================================================
:SUB_ENERGIA
color 0E
cls
echo =======================================================================
echo     !T_TITLE! - !T_SUB14!
echo =======================================================================
echo   [1] !S14_1!
echo   [2] !S14_2!
echo   [3] !S14_3!
echo   [4] !S14_4!
echo   [5] !S14_5!
echo   [0] !T_BACK!
echo =======================================================================
set "sub11="
set /p sub11="!T_SEL_OP!"

if "%sub11%"=="1" (
    set "sec="
    set /p sec="> Time in seconds (e.g. 3600 = 1h): "
    if defined sec shutdown /s /t !sec!
    pause & goto SUB_ENERGIA
)
if "%sub11%"=="2" ( shutdown /a & echo [OK] Cancelled. & pause & goto SUB_ENERGIA )
if "%sub11%"=="3" (
    powercfg /batteryreport /output "%USERPROFILE%\Desktop\Battery_Report.html"
    echo [OK] Battery report saved on Desktop.
    pause & goto SUB_ENERGIA
)
if "%sub11%"=="4" ( shutdown /r /t 0 )
if "%sub11%"=="5" ( shutdown /r /fw /t 0 )
if "%sub11%"=="0" goto MENU_PRINCIPAL
goto SUB_ENERGIA

:: =========================================================================
:: RAMA 15: UTILIDADES POWERSHELL
:: =========================================================================
:SUB_PS_UTILIDADES
color 0D
cls
echo =======================================================================
echo    !T_TITLE! - !T_SUB15!
echo =======================================================================
echo   [1] !S15_1!
echo   [2] !S15_2!
echo   [3] !S15_3!
echo   [4] !S15_4!
echo   [5] !S15_5!
echo   [0] !T_BACK!
echo =======================================================================
set "sub_ps="
set /p sub_ps="!T_SEL_OP!"

if "%sub_ps%"=="1" (
    echo. & echo Getting top memory consumer processes...
    powershell -NoProfile -Command "Get-Process | Sort-Object WorkingSet64 -Descending | Select-Object -First 10 Name, @{Name='RAM (MB)'; Expression={[math]::round($_.WorkingSet64 / 1MB, 2)}} | Format-Table -AutoSize"
    pause & goto SUB_PS_UTILIDADES
)
if "%sub_ps%"=="2" (
    echo. & echo Removing preinstalled bloatware...
    powershell -NoProfile -Command "Get-AppxPackage *3dbuilder* | Remove-AppxPackage; Get-AppxPackage *bingweather* | Remove-AppxPackage; Get-AppxPackage *solitairecollection* | Remove-AppxPackage; Get-AppxPackage *people* | Remove-AppxPackage; Get-AppxPackage *windowsphone* | Remove-AppxPackage"
    echo [OK] Done.
    pause & goto SUB_PS_UTILIDADES
)
if "%sub_ps%"=="3" (
    echo. & echo Installing pending drivers via Windows Update...
    powershell -NoProfile -Command "Install-Module PSWindowsUpdate -Force -Confirm:$false; Get-WindowsUpdate -MicrosoftUpdate -AcceptAll -Install"
    pause & goto SUB_PS_UTILIDADES
)
if "%sub_ps%"=="4" (
    set "testip=" & set "testport="
    set /p testip="> IP or Domain to test: "
    set /p testport="> TCP Port (e.g. 80, 443, 3389): "
    if defined testip if defined testport powershell -NoProfile -Command "Test-NetConnection -ComputerName !testip! -Port !testport!"
    pause & goto SUB_PS_UTILIDADES
)
if "%sub_ps%"=="5" (
    echo. & echo Emptying Recycle Bin...
    powershell -NoProfile -Command "Clear-RecycleBin -Force -ErrorAction SilentlyContinue"
    echo [OK] Done.
    pause & goto SUB_PS_UTILIDADES
)
if "%sub_ps%"=="0" goto MENU_PRINCIPAL
goto SUB_PS_UTILIDADES