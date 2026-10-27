#!/usr/bin/env bash
# Mirror the real-content pages of ontheropes.com (per content-inventory.md) into ./site
# Skips theme demo, WooCommerce system, iump member portal and spam posts.
set -euo pipefail
OUT=${1:-site}
PAGES=(
  / about-me personal-training-boxing-coaching boxing-training classes faqs
  courses-and-classes courses-and-classes/jump-start-programme courses-and-classes/jump-like-a-boxer
  courses-and-classes/double-under-masterclass courses-and-classes/backwards-manipulation-workshop
  courses-and-classes/jump-rope-classes-online
  personal-training boxing-classes-east-london training lockdown-fitness
  lower-body-strength-hypertrophy upper-body-strength-technique-focus optimise-your-health
  optimiseyourhealth events fitness-quiz time-audit calculator fitclub-awards fitclub-awards-2022
  fitclub-january-challenge running-order fcgt privacypolicy privacy terms deliveries-and-returns
)
URLS=()
for p in "${PAGES[@]}"; do
  [[ $p == / ]] && URLS+=("https://ontheropes.com/") || URLS+=("https://ontheropes.com/$p/")
done
# Page HTML plus the images/CSS it references (page requisites), same host + uploads only.
wget --page-requisites --convert-links --adjust-extension --no-parent \
  --domains=ontheropes.com --reject-regex='(wp-json|xmlrpc|\?replytocom|/feed/)' \
  --wait=1 --random-wait -e robots=off -P "$OUT" "${URLS[@]}" || true
echo "Done. Review $OUT/ontheropes.com before committing."
