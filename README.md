# Okami Signal Lab

Standalone Okami Designs AV calibration tool. Fully **client-side** (canvas + Web Audio) — no Node API.

## Pages

| Path | Role |
|------|------|
| `/` (`index.html`) | App **landing page** — what the main Okami site links to |
| `/app.html` | The actual tool UI |

Flow: main site Tools → this host `/` → **Open Signal Lab** → `app.html`.

## Local

```bash
npx serve -l 3081 .
# open http://localhost:3081
```

## Docker

```bash
docker build -t okami-signal-lab .
docker run --rm -p 3081:80 okami-signal-lab
# open http://localhost:3081
```

## Layout

| Path | Role |
|------|------|
| `index.html` | App shell |
| `app.js` | UI / DOM |
| `engine/` | Portable render/math |
| `modules/` | Pattern modules |
| `led-wall-calculator/` | Shared LED metrics adapter inputs |
| `signal-lab-output.html` | Pop-out output window |
| `css/` | Design tokens + chrome + site style snapshot |

Commercial/licensing scripts from the main website are **not** bundled here (optional `?.` calls in `app.js` no-op).

Public URL (planned): `https://signallab.okamidesigns.com`
