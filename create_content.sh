#!/bin/bash

python3 -m venv env
. env/bin/activate
pip install --upgrade pip
pip install -r requirements.txt

mkdir blog_posts

python3 generate/scrape.py
python3 generate/quote.py >tracery.json
