# Définir les chemins à ajouter
$pythonPath = "C:\Users\paulc\AppData\Local\Programs\Python\Python310"
$scriptsPath = "C:\Users\paulc\AppData\Local\Programs\Python\Python310\Scripts"

# Récupérer la variable Path utilisateur actuelle
$currentPath = [System.Environment]::GetEnvironmentVariable("Path", "User")

# Vérifier si les chemins sont déjà ajoutés, sinon les ajouter
if (-not $currentPath.Contains($pythonPath)) {
    $currentPath += ";$pythonPath"
}

if (-not $currentPath.Contains($scriptsPath)) {
    $currentPath += ";$scriptsPath"
}

# Mettre à jour la variable Path utilisateur
[System.Environment]::SetEnvironmentVariable("Path", $currentPath, "User")

# Confirmer la mise à jour
Write-Host "Les chemins suivants ont été ajoutés à la variable Path :"
Write-Host $pythonPath
Write-Host $scriptsPath
