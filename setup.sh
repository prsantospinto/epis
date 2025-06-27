#!/bin/bash

echo "🔧 Atualizando o sistema..."
sudo apt update && sudo apt upgrade -y

echo "📦 Instalando o Python e dependências..."
sudo apt install -y python3 python3-pip python3-venv git

echo "🐍 Criando ambiente virtual..."
python3 -m venv venv
source venv/bin/activate

echo "📚 Instalando bibliotecas Python necessárias..."
pip install Flask Flask-SQLAlchemy Flask-Migrate Flask-Login python-dotenv email-validator

echo "📁 Criando estrutura de diretórios do projeto..."

mkdir -p epi_sistema/app/routes
mkdir -p epi_sistema/app/templates
mkdir -p epi_sistema/app/static/css
mkdir -p epi_sistema/app/static/js

touch epi_sistema/run.py
touch epi_sistema/config.py
touch epi_sistema/requirements.txt
touch epi_sistema/app/__init__.py
touch epi_sistema/app/models.py
touch epi_sistema/app/routes/__init__.py
touch epi_sistema/app/templates/base.html

echo "✅ Ambiente pronto. Agora entre na pasta epi_sistema e comece o projeto!"
