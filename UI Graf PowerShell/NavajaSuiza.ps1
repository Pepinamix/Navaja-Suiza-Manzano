Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

# Crear la ventana principal de la aplicación
$form = New-Object System.Windows.Forms.Form
$form.Text = "Navaja Suiza Manzano - v0.02 GUI"
$form.Size = New-Object System.Drawing.Size(750, 550)
$form.StartPosition = "CenterScreen"
$form.BackColor = [System.Drawing.Color]::FromArgb(30, 30, 30) # Fondo oscuro moderno

# Título superior
$lblTitle = New-Object System.Windows.Forms.Label
$lblTitle.Text = "NAVAJA SUIZA MANZANO - SUITE DE MANTENIMIENTO"
$lblTitle.ForeColor = [System.Drawing.Color]::FromArgb(0, 120, 214)
$lblTitle.Font = New-Object System.Drawing.Font("Segoe UI", 12, [System.Drawing.FontStyle]::Bold)
$lblTitle.Location = New-Object System.Drawing.Point(20, 20)
$lblTitle.AutoSize = $true
$form.Controls.Add($lblTitle)

# Botón 1: Limpieza de Sistema
$btnClean = New-Object System.Windows.Forms.Button
$btnClean.Text = "Limpieza de Sistema"
$btnClean.Location = New-Object System.Drawing.Point(20, 70)
$btnClean.Size = New-Object System.Drawing.Size(220, 45)
$btnClean.BackColor = [System.Drawing.Color]::FromArgb(78, 170, 37)
$btnClean.ForeColor = [System.Drawing.Color]::White
$btnClean.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$btnClean.Add_Click({
    [System.Windows.Forms.MessageBox]::Show("Ejecutando limpieza de archivos temporales...", "Aviso", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Information)
})
$form.Controls.Add($btnClean)

# Botón 2: Buscador de Duplicados SHA256
$btnDup = New-Object System.Windows.Forms.Button
$btnDup.Text = "Buscador Duplicados SHA256"
$btnDup.Location = New-Object System.Drawing.Point(250, 70)
$btnDup.Size = New-Object System.Drawing.Size(220, 45)
$btnDup.BackColor = [System.Drawing.Color]::FromArgb(0, 120, 214)
$btnDup.ForeColor = [System.Drawing.Color]::White
$btnDup.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$btnDup.Add_Click({
    [System.Windows.Forms.MessageBox]::Show("Abriendo motor de búsqueda de duplicados...", "Aviso", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Information)
})
$form.Controls.Add($btnDup)

# Iniciar y mostrar la interfaz gráfica
[void]$form.ShowDialog()