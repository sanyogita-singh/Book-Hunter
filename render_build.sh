#!/usr/bin/env bash
echo "---- Installing Dependencies ----"
pip install --upgrade pip
pip install -r requirements.txt

echo "---- Setting Flask App ----"
export FLASK_APP=app.py

echo "---- Running Database Migrations ----"
python -m flask db upgrade

echo "---- Build Complete ----"