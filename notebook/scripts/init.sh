#!/bin/bash

# Notebook initialization script
# Creates notebook files if they don't exist

NOTEBOOK_DIR="notebook"

mkdir -p "$NOTEBOOK_DIR"

create_if_missing() {
    local file="$1"
    local content="$2"

    if [ ! -f "$NOTEBOOK_DIR/$file" ]; then
        echo "$content" > "$NOTEBOOK_DIR/$file"
        echo "Created $NOTEBOOK_DIR/$file"
    else
        echo "$NOTEBOOK_DIR/$file already exists"
    fi
}

create_if_missing "domain.md" "# Domain Notes

<!-- Domain terms, user intent, relationships -->
<!-- Format: ### Topic / One-line why / → reference -->
"

create_if_missing "tech.md" "# Technical Notes

<!-- Constraints, decisions affecting future changes -->
<!-- Format: ### Topic / One-line why / → reference -->
"

create_if_missing "behavior.md" "# Behavior Notes

<!-- AI rules, prohibitions, priorities -->
<!-- Keep short and explicit -->
"

echo "Notebook initialized."
