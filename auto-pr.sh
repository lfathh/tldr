#!/bin/bash
# SCRIPT AUTO PR - VERSI REBORN
echo "🚀 MEMULAI PROSES PR..."

# Cek perubahan
if [[ -z $(git status -s) ]]; then
  echo "❌ ERROR: Belum ada file yang diedit!"
  exit 1
fi

read -p "📂 Nama Branch (cth: tambah-mkdir-indo): " BRANCH
read -p "📝 Pesan Commit (cth: translate mkdir to Indonesian): " MSG
read -p "heading Judul PR (cth: Add Indonesian translation for mkdir): " TITLE
read -p "📄 Deskripsi (cth: Translating mkdir command): " BODY

git checkout -b "$BRANCH"
git add .
git commit -m "$MSG"
git push --set-upstream origin "$BRANCH"
gh repo set-default tldr-pages/tldr
gh pr create --title "$TITLE" --body "$BODY" --base main

echo "✅ SELESAI! Cek link di atas."

