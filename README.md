# Spark Yes — WordPress Theme

## Contributors

- Roy Dela Torre ([@delatoreroy-pdm](https://github.com/delatoreroy-pdm))
- _Add your name or GitHub username here._

---

## Description

Spark Yes is a modern, developer-focused WordPress theme built for flexibility and customization. It follows best practices, stays lean, and works well with popular plugins. Optimized for speed and SEO, it’s a solid base for blogs, business sites, and portfolios.

---

## Installation

1. Upload the `spark-yes` folder to `/wp-content/themes/`.
2. In WordPress: **Appearance → Themes**
3. Activate **Spark Yes**

---

## Changelog

### 1.0.0

- Initial release

---

## Credits

- [normalize.css](https://necolas.github.io/normalize.css/) — Nicolas Gallagher (MIT)

---

## License

GPL v2 or later.

---

## Recommended Plugins

- Advanced Contact Form 7
- CFDB7 (Contact Form 7 Database Addon)
- Contact Form 7 Redirection
- Redirection
- Better Search Replace
- Advanced Custom Fields (ACF)
- Custom Post Type UI
- Yoast SEO

---

## Optimization Tips

- **Headings:** One `<h1>` per page; use semantic `<h2>`…`<h6>` for structure.
- **Images:** Compress before upload, prefer WebP, keep under ~500KB, add descriptive alt.
- **Performance:** Use caching + CDN; keep plugins minimal.

---

## Template File Guidance

**Custom post type templates:**

- `single-{slug}.php` — single entry
- `archive-{slug}.php` — archive

**Inline SVG helper:**

```php
$svg_path = get_stylesheet_directory_uri() . '/assets/svg/';
echo file_get_contents($svg_path . 'search.svg');
```

**Build Tailwind CSS:**

```bash
npx @tailwindcss/cli -i ./src/input.css -o ./src/output.css --watch
```

---

## Git + cPanel Deployment

This theme uses cPanel → Git Version Control to deploy directly to the live theme folder.

- **Repo location on server:**  
   `/home/sparkyesinnovat/public_html/wp-content/themes/spark-yes`

### Requirements

- Git repo initialized in the path above
- Valid `.cpanel.yml` at the repo root
- Working tree clean (no uncommitted or untracked files)
- SSH + Git enabled on the server

### Deployment Workflow

**Local (developer machine):**

```bash
git add .
git commit -m "Your message"
git push origin main
```

**Server (if auto-deploy is off or UI won’t enable Deploy):**

```bash
cd ~/public_html/wp-content/themes/spark-yes
git fetch origin
git reset --hard origin/main
git clean -fd         # add -fxd to also remove ignored files
git pull
```

Then in cPanel → Git Version Control:  
Click **Update from Remote → Deploy HEAD Commit**.

---

## .cpanel.yml (repo root)

```yaml
---
deployment:
   tasks:
      - /bin/echo "Deploying spark-yes theme..."
```

Because the repo is the live theme directory, no copy/rsync step is needed.

---

## .gitignore (recommended)

```gitignore
node_modules/
cache/
*.log
*.sql
*.zip
vendor/
.env
.DS_Store
```

---

## Troubleshooting Deployment

If cPanel shows “The system cannot deploy”:

1. Ensure `.cpanel.yml` exists in `/wp-content/themes/spark-yes/`.
2. Clean the working tree:

      ```bash
      cd ~/public_html/wp-content/themes/spark-yes
      git status
      git reset --hard origin/main
      git clean -fd      # or -fxd if needed
      git pull
      ```

3. Hard refresh the cPanel page, click **Update from Remote**, then **Deploy HEAD Commit**.

---

## GitHub Quick Commands

```bash
git status
git add .
git commit -m "update"
git push origin main
```

ssh sparkyesinnovnat@sparkyes.innovnational.com -p 1988
cd /home/sparkyesinnovnat/public_html/wp-content/themes/spark-yes