# Lovely Backdrop

A single-file ambient backdrop site for a live piano performance of **"Lovely"**.

## What it is
- One self-contained `index.html`
- No build step
- No external dependencies
- Designed to open directly in a browser and run fullscreen

## Features
- Uses a soft, treated piano-performance video as a moving background texture
- Smooth two-video crossfade loop so the restart feels clean instead of snapping
- Slow ambient motion
- Dark midnight blue / muted purple palette
- Soft centered dedication text
- Canvas-based drifting light blooms

## Usage
Open `index.html` in a browser, then press `F11` for fullscreen.

Most browsers will block **autoplay with sound** until there's a user gesture, so if the audio doesn't begin immediately, click once anywhere on the page.

### Autoplay launcher
For a Chromium-based browser, use the included launcher instead:

```bash
./start-lovely.sh
```

That opens the local page fullscreen with Chromium's autoplay restriction disabled so the song can begin immediately.

The page expects these local companion files to sit beside `index.html`:
- `lovely-performance-bg.mp4`
- `preview-frame.jpg`

## Customize
Edit these values near the top of the inline script in `index.html`:
- `RECIPIENT_NAME`
- `dedicationText`

