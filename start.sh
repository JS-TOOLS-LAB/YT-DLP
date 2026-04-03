#!/bin/bash

# YT-DLP Simplified Downloader v1.1
# Usage: ./start.sh

VERSION="1.1"

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "        YT-DLP SIMPLIFIED v$VERSION          "
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# Check if yt-dlp is installed
if ! command -v yt-dlp &> /dev/null; then
    echo "❌ yt-dlp not found. Installing..."
    pip install yt-dlp
fi

# Get URL
read -p "🔗 Enter URL: " url

# Choose format
echo ""
echo "Select format:"
echo "1) MP4 (Video)"
echo "2) MP3 (Audio)"
read -p "Choice (1/2): " choice

# Set format and options
if [ "$choice" == "1" ]; then
    format="mp4"
    echo "✅ Downloading as MP4..."
    yt-dlp -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best" \
           --merge-output-format mp4 \
           -o "%(title)s.%(ext)s" "$url"
elif [ "$choice" == "2" ]; then
    format="mp3"
    echo "✅ Downloading as MP3..."
    yt-dlp -x --audio-format mp3 \
           --audio-quality 0 \
           -o "%(title)s.%(ext)s" "$url"
else
    echo "❌ Invalid choice"
    exit 1
fi

# Detect OS and set download path
if [[ "$OSTYPE" == "darwin"* ]]; then
    DOWNLOAD_DIR="/sdcard/Downloads"
    if [ ! -d "$DOWNLOAD_DIR" ]; then
        mkdir -p "$DOWNLOAD_DIR"
    fi
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    DOWNLOAD_DIR="$HOME/Downloads"
elif [[ "$OSTYPE" == "msys" ]] || [[ "$OSTYPE" == "cygwin" ]] || [[ "$OSTYPE" == "win32" ]]; then
    DOWNLOAD_DIR="/c/Users/$USER/Downloads"
else
    DOWNLOAD_DIR="$HOME/Downloads"
fi

# Move file to download folder
mv *.mp4 *.mp3 "$DOWNLOAD_DIR/" 2>/dev/null

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ Download complete!"
echo "📁 Saved to: $DOWNLOAD_DIR"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
