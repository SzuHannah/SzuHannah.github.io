#!/bin/bash
# ============================================================
# download_files.sh
# Run this BEFORE overwriting your repo to save all PDFs
# Usage: cd SzuHannah.github.io && bash download_files.sh
# ============================================================

set -e

echo "📥 Downloading self-hosted files from your current site..."
echo ""

# Create directories
mkdir -p files/posters files/slides files/papers

# Posters
echo "  → Posters..."
curl -sL -o files/posters/TAPPInanotech2019_posterTzeHan.pdf \
  "https://szuhannah.github.io/publication/conference-paper/TAPPInanotech2019_posterTzeHan.pdf"

curl -sL -o files/posters/TAPPInanotech2019_posterHan.pdf \
  "https://szuhannah.github.io/publication/conference-paper/TAPPInanotech2019_posterHan.pdf"

curl -sL -o files/posters/TACP2016_poster_ChenWang.pdf \
  "https://szuhannah.github.io/publication/conference-paper/TACP2016_poster_ChenWang.pdf"

# Slides
echo "  → Slides..."
curl -sL -o files/slides/intro-to-ml.pdf \
  "https://szuhannah.github.io/slides/example/intro-to-ml.pdf"

curl -sL -o files/slides/2018ForestryMeeting.pdf \
  "https://szuhannah.github.io/slides/example/2018ForestryMeeting.pdf"

# Papers
echo "  → Papers..."
curl -sL -o files/papers/bitcoin-paper.pdf \
  "https://szuhannah.github.io/publication/preprint/bitcoin-paper.pdf"

curl -sL -o files/papers/Microbial_Report.pdf \
  "https://szuhannah.github.io/Microbial-graph/docs/Microbial_Report.pdf"

# Avatar photo
echo "  → Profile photo..."
mkdir -p images
curl -sL -o images/avatar.jpg \
  "https://szuhannah.github.io/author/hannah-szu-han-wang/avatar_huac339f42e517e4c0ef8ed2223135e494_146031_270x270_fill_q90_lanczos_center.jpg"

echo ""
echo "✅ Done! Downloaded files:"
find files/ images/ -type f | sort
echo ""
echo "You can now safely overwrite the repo with the Quarto project."
