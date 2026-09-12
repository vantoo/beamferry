#!/usr/bin/env bash
set -euo pipefail

rm -rf _site

mkdir -p \
  _site/desktop-receiver \
  _site/sender/dist \
  _site/vendor

cp \
  index.html \
  app.js \
  styles.css \
  sw.js \
  manifest.webmanifest \
  protocol.js \
  highspeed-protocol.js \
  receiver-storage.js \
  decoder-worker.js \
  highspeed-decoder-worker.js \
  robots.txt \
  sitemap.xml \
  _site/

cp -R vendor/. _site/vendor/

cp \
  sender/dist/beamferry-sender.html \
  _site/sender/dist/beamferry-sender.html

cp -R desktop-receiver/. _site/desktop-receiver/

rm -f \
  _site/desktop-receiver/serve.mjs \
  _site/desktop-receiver/test.mjs \
  _site/desktop-receiver/README.md
