#!/bin/bash
echo
echo "Creating .env folder"
echo

[ -d $HOME"/.env" ] || mkdir -p $HOME"/.env"

echo
echo "Creating openai-key file to store personal api token"
echo

[ -e $HOME"/.env/openai-key.sh" ] || touch $HOME"/.env/openai-key.fish"

echo 'set -x OPENAI_API_KEY "your_api_key_value"' | cat > $HOME"/.env/openai-key.fish"

echo
echo "Now you can add you api key to the openapi-key file"
echo

