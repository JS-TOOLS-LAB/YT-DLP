<div align="center">
```markdown
# 🎬 YT-DLP Simplified

### *A super simple wrapper for `yt-dlp` that asks for a URL and lets you choose MP4 or MP3 — no complex commands needed.*

![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)
![GitHub version](https://img.shields.io/badge/version-1.1-green)
![Platform](https://img.shields.io/badge/platform-Linux%20%7C%20macOS%20%7C%20Windows%20%7C%20Android-lightgrey)
![Python](https://img.shields.io/badge/python-3.7+-yellow)
![Bash](https://img.shields.io/badge/bash-5.0+-orange)


---
</div>

## ✨ Features

- ✅ **One-click start** with `./start.sh`
- ✅ **Paste any URL** (YouTube, Vimeo, Twitter, TikTok, and 1000+ more)
- ✅ **Choose MP4** (video) or **MP3** (audio)
- ✅ **Auto-detects your OS** and saves to correct Downloads folder
- ✅ **Installs `yt-dlp` automatically** if missing
- ✅ **Zero configuration needed** - just run and go

---

## 📋 Requirements

| Requirement | Version |
|------------|---------|
| Python | 3.7 or higher |
| pip | Latest |
| bash | 5.0+ (Linux/macOS/Git Bash) |
| Internet | Active connection |

---

## 🚀 Quick Installation

```bash
git clone https://github.com/JS-TOOLS-LAB/YT-DLP.git
cd YT-DLP
chmod +x start.sh
pip install -r requirements.txt
```

---

▶️ Usage Guide

Step 1: Run the script

```bash
./start.sh
```

Step 2: Enter your URL

```
🔗 Enter URL: https://youtube.com/watch?v=...
```

Step 3: Choose format

```
Select format:
1) MP4 (Video)
2) MP3 (Audio)
Choice (1/2): 2
```

Step 4: Done!

```
✅ Download complete!
📁 Saved to: /home/user/Downloads
```

---

📂 Default Save Locations

<div align="center">

OS Path
<img src="https://img.shields.io/badge/Android-3DDC84?logo=android&logoColor=white" height="20"> Android (Termux) /sdcard/Downloads
<img src="https://img.shields.io/badge/Windows-0078D6?logo=windows&logoColor=white" height="20"> Windows C:\Users\YourName\Downloads
<img src="https://img.shields.io/badge/macOS-000000?logo=apple&logoColor=white" height="20"> macOS ~/Downloads
<img src="https://img.shields.io/badge/Linux-FCC624?logo=linux&logoColor=black" height="20"> Linux ~/Downloads

</div>

---

🎯 Example Walkthrough

```bash
$ ./start.sh

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
        YT-DLP SIMPLIFIED v1.1          
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

🔗 Enter URL: https://youtube.com/watch?v=dQw4w9WgXcQ

Select format:
1) MP4 (Video)
2) MP3 (Audio)
Choice (1/2): 2

✅ Downloading as MP3...
[download] 100% of 3.5 MiB
[extractaudio] Destination: Never Gonna Give You Up.mp3

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
✅ Download complete!
📁 Saved to: /home/user/Downloads
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
```

---

🔧 Manual Commands (Advanced Users)

Download as MP4 (Video)

```bash
yt-dlp -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best" \
       --merge-output-format mp4 -o "%(title)s.%(ext)s" "URL"
```

Download as MP3 (Audio)

```bash
yt-dlp -x --audio-format mp3 --audio-quality 0 -o "%(title)s.%(ext)s" "URL"
```

---

⚙️ Configuration Options

Edit start.sh to customize:

Setting Line to change Options
Download location DOWNLOAD_DIR= Any valid path
Audio quality --audio-quality 0 (best) to 9 (worst)
Video quality -f parameter best, worst, 720p, 1080p
Filename template -o parameter %(title)s, %(id)s, etc.

---

🔒 Permissions Setup

Linux/macOS/Android (Termux)

```bash
# Make script executable
chmod +x start.sh

# If permission denied
sudo chmod +x start.sh
```

Windows (Git Bash)

```bash
# Run as Administrator
chmod +x start.sh
```

---

🛡️ License

<div align="center">

MIT License

Copyright (c) 2024 JS-TOOLS-LAB

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.

</div>

---

📄 Third-Party Licenses

Project License Link
yt-dlp Unlicense (Public Domain) github.com/yt-dlp/yt-dlp
Python PSF License python.org

---

❓ Troubleshooting

Permission Denied

```bash
chmod +x start.sh
```

yt-dlp Not Found

```bash
pip install yt-dlp
# or
pip3 install yt-dlp
```

Python Not Found

```bash
# Ubuntu/Debian
sudo apt install python3 python3-pip

# macOS
brew install python3

# Windows
# Download from python.org
```

SSL Certificate Error (Android/Termux)

```bash
pkg install openssl
pip install --upgrade certifi
```

---

📞 Support

· 📧 Issues: GitHub Issues
· ⭐ Star this repo if you find it useful
· 🔄 Fork to contribute improvements

---

🙏 Acknowledgments

· yt-dlp - The incredible downloader that powers this tool
· FFmpeg - For audio/video processing
· Open Source Community - For making amazing tools free for everyone

---

<div align="center">

👨‍💻 Creator

---

Mr JV Sibanyoni

Designed & Developed with ❤️ for the open source community

"Make downloading simple, make sharing easier"

---

https://img.shields.io/badge/GitHub-JS--TOOLS--LAB-181717?logo=github
https://img.shields.io/badge/License-MIT-blue.svg
https://img.shields.io/badge/Made%20with-Bash-1f425f.svg

⭐ Star this repository if it helped you! ⭐

---

© 2026 JS-TOOLS-LAB | Mr JV Sibanyoni | All Rights Reserved

</div>
```
