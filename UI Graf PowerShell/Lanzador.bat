@echo off
title Navaja Suiza Manzano
:: Ejecuta el script de PowerShell ignorando la política de restricción solo para esta sesión
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0NavajaSuiza.ps1"
exit