#!/bin/bash

# Bonus: vérification argument
if [ -z "$1" ]; then
  echo "Erreur: usage: $0 <nom-projet>"
  exit 1
fi

PROJET="$1"
AUTEUR="NEWTON"

# Crée la structure
mkdir -p "$PROJET"/{src,tests,docs}
touch "$PROJET/README.md" "$PROJET/.gitignore"

# README.md : nom, date, auteur
{
  echo "# $PROJET"
  echo ""
  echo "Date de création : $(date)"
  echo "Auteur : $AUTEUR"
} > "$PROJET/README.md"

# .gitignore : classiques
cat > "$PROJET/.gitignore" << 'GIT'
__pycache__/
*.pyc
.env
node_modules/
GIT

# Message de succès en vert
echo -e "\033[32m✅ Projet '$PROJET' initialisé avec succès.\033[0m"
