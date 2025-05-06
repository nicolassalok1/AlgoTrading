#RUN CA EN AMONT :
#Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
#puis :
#./setup.ps1

# Arrêter en cas d’erreur
$ErrorActionPreference = "Stop"

conda deactivate
conda env remove --name -AlgoTrading
conda create --name AlgoTrading python=3.10
conda activate AlgoTrading

python.exe -m pip install --upgrade pip

pip install git+https://github.com/yhilpisch/tpqoa.git

Write-Host "Installation des dépendances Python..."

conda env update -n ml_project --file pyalgo_env.yml


Write-Host "Setup termine avec succes."