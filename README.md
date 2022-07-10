# Branding assets for Snout

[![Current version][badge-version-image]][badge-version-link]
[![Download][badge-download-image]][badge-download-link]
[![Build status][badge-build-image]][badge-build-link]

[badge-build-image]: https://img.shields.io/github/workflow/status/snout-router/branding/CI?style=for-the-badge
[badge-build-link]: https://github.com/snout-router/branding/actions/workflows/ci.yml
[badge-download-image]: https://img.shields.io/github/downloads/snout-router/branding/latest/snout.branding.zip?sort=semver&style=for-the-badge&color=%2345cc11
[badge-download-link]: https://github.com/snout-router/branding/releases/latest/download/snout.branding.zip
[badge-version-image]: https://img.shields.io/npm/v/@snout/branding?label=%40snout%2Fbranding&logo=npm&style=for-the-badge
[badge-version-link]: https://npmjs.com/package/@snout/branding

## Usage

```js
const consumer = require("@snout/branding");

const faviconPath = consumer.absoluteImagePath("faviconIco", "container");
```
