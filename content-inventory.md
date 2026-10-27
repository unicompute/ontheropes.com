# ontheropes.com content inventory

Prepared 2026-10-27 for copying ontheropes.com into github.com/unicompute/ontheropes.com and later reusing pages on ontheropes.okzulu.com.

**Status:** this is an inventory, not the copy. The sandbox can't download from ontheropes.com directly yet, and the read-only fetcher it can use only returns summaries, not verbatim text. Notes below are summaries for triage. The real copy (HTML, text, images) comes once ontheropes.com is allowed in the environment's network settings and GitHub is linked.

Source: https://ontheropes.com/wp-sitemap-posts-page-1.xml (156 pages) and wp-sitemap-posts-post-1.xml (11 posts). The site runs WordPress with the "torino" theme, Elementor and WooCommerce.

## Pages likely worth copying to ontheropes.okzulu.com

| Page | URL | What it covers (summary) |
|---|---|---|
| Home | / | Three service carousel: Jump Rope Training (3,000+ trained, 12+ yrs), Personal Training/S&C (CHEK practitioners), Boxing (since 2010) |
| About Us | /about-me/ | Founded 2007, first UK Buddy Lee Jump Ropes supplier, UK's first dedicated jump rope classes from 2012, partnership with Buddy Lee / Jump Rope Institute. One image (attachment 1406) |
| Personal Training & Boxing Coaching | /personal-training-boxing-coaching/ | Main sales page. Boxing camps, bespoke PT, EVOLVE 180 (16 wk), jump rope training. Full price list. Contact 07886029603, wasim@ontheropes.com. Image: /wp-content/uploads/2018/05/Cover-Photo-1-e1527376029951.jpg |
| Boxing Training | /boxing-training/ | 1:1 and small group from £80, 12-week Boxing Conditioning Camp £2,500 (36 sessions), coach credentials, typical session structure |
| Workshops and Classes | /classes/ | Interval class, HIIT, BoxJump, DanceJump, JumpTricks, Jump Start, boxer-style masterclass, doubles, backwards masterclass. Notes a Covid-era "one class only" line that is probably out of date |
| FAQs | /faqs/ | Shop FAQs (which rope, adjusting ropes, payment, trade accounts, returns). Lists 0845 436 0000 / sales@ontheropes.com, which differ from the training page contacts. Stats section background still points at the theme demo host torino.coderclouds.com |
| Course pages | /courses-and-classes/ and its children: jump-start-programme, jump-like-a-boxer, double-under-masterclass, backwards-manipulation-workshop, jump-rope-classes-online | Not yet reviewed |
| Other likely real pages | /personal-training/, /boxing-classes-east-london/, /training/, /lockdown-fitness/, /lower-body-strength-hypertrophy/, /upper-body-strength-technique-focus/, /optimise-your-health/, /optimiseyourhealth/, /events/, /fitness-quiz/, /time-audit/, /calculator/, /fitclub-awards/, /fitclub-awards-2022/, /fitclub-january-challenge/, /running-order/, /fcgt/ | Not yet reviewed |
| Legal | /privacypolicy/, /privacy/, /terms/, /deliveries-and-returns/ | Needed if the shop moves |

## Empty or shell pages

- /shop/ returned no products to the fetcher (WooCommerce listing may be JS-loaded or empty)
- /contact-us-2/ has a title only, no body

## Pages to leave out

- **Theme demo leftovers (~45):** home-furniture, home-fashion, home-jewellery, home-minimalist, home-electronics, home-marketplace, home-portfolio, home-pets, our-shop, our-services, our-gallery, recent-products, featured-products, element-products, single-product, products-*, sale-products, top-rated-products, google-maps, banners, titles, instagram, social-buttons, team-member, testimonials, blog-element, animated-counter, countdown-timer, 360-degree-view, menu-price, infobox, pricing-tables, product-ajax-arrows, product-load-more, portfolio-element, images-gallery, ajax-products-tabs, coming-soon(-2), section-dividers, gradients, timeline, elementor-3213, elementor-3260, home-page
- **WooCommerce / plugin system pages:** wishlist, cart, checkout, my-account, yith-compare, donation-*, donor-dashboard(-2,-3,-4), thank-you, thank-you-for-subscribing, signup, sign-up
- **Membership plugin pages (iump-*) and 39 member portal pages** under /iump-account-page/portal_page_*/ . These are per-member pages and should not be copied to a public repo
- /wasims-page/, /certification-contact-page/, /members/: check with Tariq

## Security flag

The post sitemap lists 11 posts that are spam: 6 Hebrew titles about holidays in Israel and 5 Ukrainian titles about paving blocks. None of it relates to On The Ropes. That usually means the WordPress site was compromised or a spam account got author access. It's worth checking WordPress users and plugins, and removing those posts.
