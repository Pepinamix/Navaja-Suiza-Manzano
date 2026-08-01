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
---

## 🛡️ Falsos Positivos y Seguridad / False Positives & Security

<details>
<summary><b>🇪🇸 Español (Haz clic para desplegar)</b></summary>

### ⚠️ Aviso sobre Windows Defender y Antivirus (Falso Positivo)
Debido a que el archivo `Lanzador.bat` utiliza la instrucción `-ExecutionPolicy Bypass` para omitir la restricción de PowerShell de Windows y permitir la ejecución directa con un doble clic, algunos antivirus o **Windows Defender / SmartScreen** pueden marcar el paquete como una amenaza (*Trojan:BAT/Runner*, *HEUR/Script* o *PUA*).

* **Es un FALSO POSITIVO 100% seguro.**
* Todo el código es de **código abierto (Open Source)** y transparente: puedes abrir `Lanzador.bat` y `NavajaSuiza.ps1` con el Bloc de notas para auditar cada línea de código.
* **Solución:** Si tu antivirus lo bloquea o elimina, añade la carpeta del proyecto a la lista de **Exclusiones** de tu antivirus/Windows Defender.
</details>

<details>
<summary><b>🇬🇧 English (Click to expand)</b></summary>

### ⚠️ Windows Defender & Antivirus Notice (False Positive)
Because `Lanzador.bat` uses the `-ExecutionPolicy Bypass` command to bypass Windows' default PowerShell script restrictions and launch via double-click, some antivirus software or **Windows Defender / SmartScreen** may flag the files as a potential threat (*Trojan:BAT/Runner*, *HEUR/Script*, or *PUA*).

* **This is a 100% SAFE FALSE POSITIVE.**
* The entire project is **Open Source** and fully transparent: you can open both `Lanzador.bat` and `NavajaSuiza.ps1` in Notepad to inspect every line of code.
* **Fix:** If your antivirus blocks or quarantines the file, simply add the project folder to your antivirus/Windows Defender **Exclusion list**.
</details>

<details>
<summary><b>🇫🇷 Français (Cliquer pour dérouler)</b></summary>

### ⚠️ Remarque sur Windows Defender et Antivirus (Faux Positif)
Le fichier `Lanzador.bat` utilisant la commande `-ExecutionPolicy Bypass` pour contourner les restrictions PowerShell de Windows et autoriser le lancement par double-clic, certains antivirus ou **Windows Defender** peuvent détecter le projet comme une menace potentielle.

* **C'est un FAUX POSITIF 100% sécurisé.**
* Le projet est **Open Source** : vous pouvez vérifier le code en ouvrant les fichiers avec un éditeur de texte.
* **Solution :** Ajoutez le dossier du projet aux **Exclusions** de votre antivirus.
</details>

<details>
<summary><b>🇩🇪 Deutsch (Zum Aufklappen klicken)</b></summary>

### ⚠️ Hinweis zu Windows Defender & Antivirenprogrammen (Falschpositiv)
Da `Lanzador.bat` den Befehl `-ExecutionPolicy Bypass` nutzt, um die Ausführungsbeschränkungen von PowerShell zu umgehen, erkennen einige Antivirenprogramme oder **Windows Defender** die Datei möglicherweise als Fehlalarm.

* **Dies ist zu 100 % ein HARMLOSER FEHLALARM.**
* Das Projekt ist **Open Source**: Der Quellcode kann jederzeit im Texteditor überprüft werden.
* **Lösung:** Fügen Sie den Projektordner zu den **Ausschlüssen** Ihres Antivirenprogramms hinzu.
</details>

<details>
<summary><b>🇮🇹 Italiano (Clicca per espandere)</b></summary>

### ⚠️ Avviso Windows Defender e Antivirus (Falso Positivo)
Poiché `Lanzador.bat` utilizza il comando `-ExecutionPolicy Bypass` per ignorare le restrizioni di PowerShell e consentire l'avvio con doppio clic, alcuni antivirus o **Windows Defender** potrebbero segnalare il file come una minaccia.

* **Si tratta di un FALSO POSITIVO al 100% sicuro.**
* Il codice è completamente **Open Source** e verificabile aprendo i file con un blocco note.
* **Soluzione:** Aggiungi la cartella del progetto alle **Esclusioni** del tuo antivirus.
</details>

<details>
<summary><b>🇵🇹 Português (Clique para expandir)</b></summary>

### ⚠️ Aviso do Windows Defender e Antivírus (Falso Positivo)
Como o arquivo `Lanzador.bat` utiliza a instrução `-ExecutionPolicy Bypass` para ignorar as restrições do PowerShell e permitir a execução direta com duplo clique, alguns antivírus ou o **Windows Defender** podem sinalizar o arquivo como suspeito.

* **Trata-se de um FALSO POSITIVO 100% seguro.**
* O projeto é totalmente **Open Source**: você pode inspecionar o código-fonte abrindo os arquivos no Bloco de Notas.
* **Solução:** Adicione a pasta do projeto à lista de **Exceções/Exclusões** do seu antivírus.
</details>

<details>
<summary><b>🇯🇵 日本語 (クリックして展開)</b></summary>

### ⚠️ Windows Defenderおよびウイルス対策ソフトに関する注意（誤検知）
`Lanzador.bat` ファイルは、PowerShellの実行ポリシー制限を回避してダブルクリックで起動できるように `-ExecutionPolicy Bypass` 命令を使用しているため、一部のウイルス対策ソフトや **Windows Defender** によって警告が表示される場合があります。

* **100% 安全な「誤検知（False Positive）」です。**
* 本プロジェクトは完全な **オープンソース** です。メモ帳などでファイルを開き、コードを直接確認できます。
* **対処法:** ウイルス対策ソフトの「除外リスト（Exclusions）」に本プロジェクトのフォルダを追加してください。
</details>

<details>
<summary><b>🇨🇳 中文 (点击展开)</b></summary>

### ⚠️ Windows Defender 与杀毒软件提示（误报说明）
由于 `Lanzador.bat` 使用了 `-ExecutionPolicy Bypass` 参数来绕过 Windows 默认的 PowerShell 脚本执行限制，实现双击直接启动，部分杀毒软件或 **Windows Defender** 可能会弹出安全警告。

* **这 100% 是安全误报 (False Positive)。**
* 本项目完全 **开源 (Open Source)**，您可以随时用记事本打开 `Lanzador.bat` 与 `NavajaSuiza.ps1` 审计每一行代码。
* **解决方法：** 将项目文件夹添加到杀毒软件或 Windows Defender 的 **排除项 (Exclusion)** 列表中。
</details>

<details>
<summary><b>🇷🇺 Русский (Нажмите, чтобы развернуть)</b></summary>

### ⚠️ Предупреждение Windows Defender и антивирусов (Ложное срабатывание)
Поскольку файл `Lanzador.bat` использует команду `-ExecutionPolicy Bypass` для обхода ограничений PowerShell и запуска по двойному клику, некоторые антивирусы или **Windows Defender** могут помечать файл как потенциальную угрозу.

* **Это на 100% БЕЗОПАСНОЕ ЛОЖНОЕ СРАБАТЫВАНИЕ.**
* Проект полностью **Open Source**: вы можете открыть любой файл в Блокноте и проверить код.
* **Решение:** Добавьте папку проекта в **Исключения** вашего антивируса.
</details>

<details>
<summary><b>🇸🇦 العربية (انقر للتوسيع)</b></summary>

### ⚠️ تنبيه بخصوص Windows Defender ومضاد الفيروسات (إنذار خاطئ)
نظرًا لأن الملف `Lanzador.bat` يستخدم الأمر `-ExecutionPolicy Bypass` لتجاوز قيود PowerShell والسماح بالتشغيل المباشر بنقرتين، قد يقوم **Windows Defender** أو بعض برامج الحماية بتصنيفه كتهديد محتمل.

* **هذا إنذار خاطئ آمن بنسبة 100%.**
* المشروع **مفتوح المصدر (Open Source)** بالكامل: يمكنك فتح الملفات ببرنامج المفكرة لمراجعة الكود.
* **الحل:** أضف مجلد المشروع إلى قائمة **الاستثناءات (Exclusions)** في برنامج الحماية الخاص بك.
</details>

---