# Frames

Photo showcase at [frames.rumbo.dev](https://frames.rumbo.dev) — built with [Hugo](https://gohugo.io) and [hugo-theme-gallery](https://github.com/nicokaiser/hugo-theme-gallery).

## Adding photos

1. Export JPEGs from a shoot (long edge ~2000px is plenty; the theme generates its own thumbs).
2. Create a folder under `content/` named for the shoot, e.g. `content/2026-11-12 - Phillip Island/`, with an `index.md`:

```markdown
---
date: 2026-11-12
title: Phillip Island
---
```

3. Drop the JPEGs in the folder.
4. Build locally to check: `hugo serve`, then open http://localhost:1313.
5. Commit and push — Cloudflare Pages rebuilds and publishes automatically.

Tips:
- First image (alphabetically) becomes the album cover; put `cover` in a filename to choose one, or set `resources` in front matter.
- `params.private: true` in an album's front matter hides it from the homepage.
- Captions: set `title` per image in front matter, or embed an `ImageDescription` EXIF tag.
