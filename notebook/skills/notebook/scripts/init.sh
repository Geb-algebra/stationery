#!/bin/bash

# Notebook initialization script
# Creates notebook files if they don't exist

NOTEBOOK_DIR="notebook"
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
ASSETS_DIR="$SCRIPT_DIR/../assets"

mkdir -p "$NOTEBOOK_DIR"

copy_if_missing() {
    local file="$1"
    local template="$ASSETS_DIR/$file"

    if [ ! -f "$NOTEBOOK_DIR/$file" ]; then
        if [ -f "$template" ]; then
            cp "$template" "$NOTEBOOK_DIR/$file"
            echo "Created $NOTEBOOK_DIR/$file"
        else
            echo "Template not found: $template"
        fi
    else
        echo "$NOTEBOOK_DIR/$file already exists"
    fi
}

copy_if_missing "domain.md"
copy_if_missing "tech.md"
copy_if_missing "behavior.md"

echo "Notebook initialized."
