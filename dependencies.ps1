# Définir le chemin du projet
$projectPath = "C:\Users\paulc\Documents\CodeMemoire"

# Naviguer vers le répertoire du projet
Set-Location -Path $projectPath

# Créer l'environnement virtuel nommé 'venvForContinuousLearningThesis'
python -m venv venvForContinuousLearningThesis

# Définir la politique d'exécution pour permettre l'exécution des scripts
Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process

# Activer l'environnement virtuel
& "$projectPath\venvForContinuousLearningThesis\Scripts\Activate.ps1"

# Vérifier si le fichier requirements.txt existe
if (Test-Path "$projectPath\requirements.txt") {
    # Installer les dépendances à partir de requirements.txt
    pip install -r requirements.txt
} else {
    Write-Host "Le fichier requirements.txt est introuvable dans le répertoire du projet."
}

