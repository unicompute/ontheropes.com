# ontheropes.com content mirror

A static copy of the real-content pages of https://ontheropes.com (WordPress), taken on 2026-10-27, so they can be reused on ontheropes.okzulu.com.

- `site/` holds the pages (`site/<slug>/index.html`, home page at `site/index.html`) with the images, PDFs, CSS and JS they reference. Links have been rewritten to relative paths so the copy browses offline.
- `crawl.sh` is the script that produced it. Uploads the crawler missed (favicons, a CSS background image and two PDFs on the FitClub pages) were fetched separately.
- `content-inventory.md` is the triage of all pages in the WordPress sitemap.

## What was left out

- About 45 theme demo pages (home-furniture, pricing-tables and so on)
- WooCommerce and plugin system pages (cart, checkout, my-account, wishlist, donations)
- Membership plugin (iump) pages and the per-member portal pages
- The 11 posts in the blog sitemap, which are spam (see below)
- /wasims-page/, /certification-contact-page/ and /members/, pending a decision

## Known issues in the source site

- The 11 blog posts are unrelated spam in Hebrew and Ukrainian, which suggests the WordPress install has been compromised. Worth checking users and plugins.
- Some pages still reference the theme demo host `torino.coderclouds.com` (for example a stats section background image), which was not copied.
- The FAQs list different contact details (0845 436 0000, sales@ontheropes.com) from the training pages (07886029603, wasim@ontheropes.com).
- /classes/ still has a Covid-era note that is probably out of date.
