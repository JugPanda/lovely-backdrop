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
- Muted autoplay with a small Unmute / Mute control for normal visitors
- Slow ambient motion
- Dark midnight blue / muted purple palette
- Soft centered dedication text
- Timed lyric overlay system with inline cue data ready to customize
- Canvas-based drifting light blooms

## Usage
Open `index.html` in a browser, then press `F11` for fullscreen.

The page now autoplays **muted** by default. Use the on-screen **Unmute** button if you want sound during a normal browser visit.

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
- `DEDICATION_DELAY_MS`
- `LYRIC_CUES` — array of `{ start, end, text }` entries for timed lyric overlays

