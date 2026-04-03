```markdown
# 🎬 YT-DLP Simplified

A super simple wrapper for `yt-dlp` that asks for a URL and lets you choose MP4 (video) or MP3 (audio) — no complex commands needed.

## 🚀 Features

- One-click start with `./start.sh`
- Paste any YouTube (or supported) URL
- Choose MP4 (video) or MP3 (audio)
- Auto-detects your OS and saves to:
  - Android (Termux): `/sdcard/Downloads`
  - Windows: `C:\Users\YourName\Downloads`
  - macOS / Linux: `~/Downloads`
- Installs `yt-dlp` automatically if missing

## 📦 Requirements

- bash (Linux/macOS) or Git Bash (Windows)
- python3 + pip
- Internet connection

## 🛠️ Installation

```bash
git clone https://github.com/yourusername/YT-DLP.git
cd YT-DLP
chmod +x start.sh
```

▶️ Usage

```bash
./start.sh
```

Then:

1. Paste the video/playlist URL
2. Type 1 for MP4 (video) or 2 for MP3 (audio)
3. Wait for download to finish

📂 Default Save Locations

OS Path
Android (Termux) /sdcard/Downloads
Windows C:\Users\YourName\Downloads
macOS / Linux ~/Downloads

📝 Examples

```bash
./start.sh
🔗 Enter URL: https://youtube.com/watch?v=...
Select format:
1) MP4 (Video)
2) MP3 (Audio)
Choice (1/2): 2

✅ Downloading as MP3...
✅ Download complete!
📁 Saved to: /home/user/Downloads
```

🔧 Manual Commands (if you prefer)

MP4:

```bash
yt-dlp -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best" \
       --merge-output-format mp4 -o "%(title)s.%(ext)s" "URL"
```

MP3:

```bash
yt-dlp -x --audio-format mp3 --audio-quality 0 -o "%(title)s.%(ext)s" "URL"
```

📄 License

MIT — free to use and modify.

🙌 Credits

· yt-dlp for the awesome downloader

```
