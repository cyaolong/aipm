#!/bin/sh
set -eu

slug="${1:-}"
if [ -z "$slug" ]; then
  printf "Project slug (e.g. focus-ai-pm): "
  read -r slug
fi

if [ -z "$slug" ]; then
  echo "Slug is required." >&2
  exit 1
fi

date_prefix=$(date +%Y%m%d)
safe_slug=$(printf "%s" "$slug" | tr '[:upper:]' '[:lower:]' | tr ' ' '-' | tr -cd 'a-z0-9-_')
project_dir="Ideas/${date_prefix}_${safe_slug}"

mkdir -p "$project_dir"

cp templates/idea_enhanced.md "$project_dir/01_idea_enhanced.md"
cp templates/prd.md "$project_dir/02_prd.md"
cp templates/prototype_brief.md "$project_dir/03_prototype.md"

echo "Created $project_dir"
