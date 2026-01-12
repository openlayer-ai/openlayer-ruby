# Changelog

## 0.10.1 (2026-01-12)

Full Changelog: [v0.10.0...v0.10.1](https://github.com/openlayer-ai/openlayer-ruby/compare/v0.10.0...v0.10.1)

### Chores

* **closes OPEN-8576:** expose delete project endpoint ([f8710ce](https://github.com/openlayer-ai/openlayer-ruby/commit/f8710cedcc4fb06b88166b36dc7727e44d0dd9f7))
* move `cgi` into dependencies for ruby 4 ([10e2f05](https://github.com/openlayer-ai/openlayer-ruby/commit/10e2f0588e532d36103121c1022dbe64e2374d34))

## 0.10.0 (2026-01-09)

Full Changelog: [v0.9.1...v0.10.0](https://github.com/openlayer-ai/openlayer-ruby/compare/v0.9.1...v0.10.0)

### Features

* **closes OPEN-8532:** expose 'tests/{id}/results' endpoint ([9283aa5](https://github.com/openlayer-ai/openlayer-ruby/commit/9283aa5daa8dc74f26a2e17c754824f4bdc57f97))

## 0.9.1 (2026-01-08)

Full Changelog: [v0.9.0...v0.9.1](https://github.com/openlayer-ai/openlayer-ruby/compare/v0.9.0...v0.9.1)

### Chores

* **closes OPEN-8644:** address warnings on Stainless studio ([7bb51fc](https://github.com/openlayer-ai/openlayer-ruby/commit/7bb51fca439c1c27ed12ec9505179a209c02bae4))
* remove _meta ([11b8689](https://github.com/openlayer-ai/openlayer-ruby/commit/11b8689d14e08c691524515b316bd2fa2d9f7069))

## 0.9.0 (2026-01-08)

Full Changelog: [v0.8.1...v0.9.0](https://github.com/openlayer-ai/openlayer-ruby/compare/v0.8.1...v0.9.0)

### Features

* **api:** add missing endpoints ([57f7ad7](https://github.com/openlayer-ai/openlayer-ruby/commit/57f7ad72db4fe4a7b3802a5cabbe0c425e3740f4))

## 0.8.1 (2026-01-06)

Full Changelog: [v0.8.0...v0.8.1](https://github.com/openlayer-ai/openlayer-ruby/compare/v0.8.0...v0.8.1)

### Chores

* **closes OPEN-8602:** parse document chunks from ConversationalSearchService response ([afb7d2e](https://github.com/openlayer-ai/openlayer-ruby/commit/afb7d2e7ea00f809c27e382bc410bc4ea1571c7f))
* **closes OPEN-8603:** represent nested steps for ConversationalSearchService traces ([e5026c7](https://github.com/openlayer-ai/openlayer-ruby/commit/e5026c72738e77610da528eff1fa826a67ffa5fe))

## 0.8.0 (2026-01-05)

Full Changelog: [v0.7.1...v0.8.0](https://github.com/openlayer-ai/openlayer-ruby/compare/v0.7.1...v0.8.0)

### Features

* **closes OPEN-8574:** session and user id support for the ConversationalSearchService tracer ([9157c52](https://github.com/openlayer-ai/openlayer-ruby/commit/9157c528195ae1a3c56ba652b8b598a2c2e53eab))

## 0.7.1 (2025-12-19)

Full Changelog: [v0.7.0...v0.7.1](https://github.com/openlayer-ai/openlayer-ruby/compare/v0.7.0...v0.7.1)

### Bug Fixes

* issue where json.parse errors when receiving HTTP 204 with nobody ([cd07b68](https://github.com/openlayer-ai/openlayer-ruby/commit/cd07b686e5ab45fb20726638181f1c9b6590a181))

## 0.7.0 (2025-12-17)

Full Changelog: [v0.6.0...v0.7.0](https://github.com/openlayer-ai/openlayer-ruby/compare/v0.6.0...v0.7.0)

### Features

* **closes OPEN-8478:** add ConversationalSearchService tracer to Ruby SDK ([a33bc2e](https://github.com/openlayer-ai/openlayer-ruby/commit/a33bc2eab12db4b8e2d95a66435b1f7fbc1d0397))

## 0.6.0 (2025-12-17)

Full Changelog: [v0.5.0...v0.6.0](https://github.com/openlayer-ai/openlayer-ruby/compare/v0.5.0...v0.6.0)

### Features

* **api:** add test evaluation method ([18f2855](https://github.com/openlayer-ai/openlayer-ruby/commit/18f28556f722aad06666f8a247e597328d218b14))


### Bug Fixes

* calling `break` out of streams should be instantaneous ([8fe6142](https://github.com/openlayer-ai/openlayer-ruby/commit/8fe6142fdb2c5590bb28678f8fbf4958bdcfb9f9))

## 0.5.0 (2025-12-16)

Full Changelog: [v0.4.1...v0.5.0](https://github.com/openlayer-ai/openlayer-ruby/compare/v0.4.1...v0.5.0)

### Features

* **api:** api update ([e686c41](https://github.com/openlayer-ai/openlayer-ruby/commit/e686c41ce85b71f1d36e6e98c57fd1e15b0dba50))
* **api:** api update ([062f345](https://github.com/openlayer-ai/openlayer-ruby/commit/062f34578e996d2f947d6175656e29657bd6d325))
* handle thread interrupts in the core HTTP client ([ec67b44](https://github.com/openlayer-ai/openlayer-ruby/commit/ec67b44714f9f117f129ace368b40e47e9ec3f3c))


### Bug Fixes

* absolutely qualified uris should always override the default ([e245d11](https://github.com/openlayer-ai/openlayer-ruby/commit/e245d1191c6f5e73a5f4431a8bfff1989d828648))
* better thread safety via early initializing SSL store during HTTP client creation ([0855118](https://github.com/openlayer-ai/openlayer-ruby/commit/0855118d3873821c235675a70cce45283342cf8b))


### Chores

* bump dependency version and update sorbet types ([005fef1](https://github.com/openlayer-ai/openlayer-ruby/commit/005fef135da52869fae96c862fde529d2b1a7f03))
* explicitly require "base64" gem ([a83cb81](https://github.com/openlayer-ai/openlayer-ruby/commit/a83cb819307c7f60dc50613302e7b88238c35fae))

## 0.4.1 (2025-10-15)

Full Changelog: [v0.4.0...v0.4.1](https://github.com/openlayer-ai/openlayer-ruby/compare/v0.4.0...v0.4.1)

### Bug Fixes

* should not reuse buffers for `IO.copy_stream` interop ([059d546](https://github.com/openlayer-ai/openlayer-ruby/commit/059d546e23d6e2d43c56c6cdb3c0408432db3ee1))


### Chores

* ignore linter error for tests having large collections ([2ccd433](https://github.com/openlayer-ai/openlayer-ruby/commit/2ccd433d1e144d0a38c998f8c44550462498734f))

## 0.4.0 (2025-10-02)

Full Changelog: [v0.0.2...v0.4.0](https://github.com/openlayer-ai/openlayer-ruby/compare/v0.0.2...v0.4.0)

### Chores

* update readme ([102f6fb](https://github.com/openlayer-ai/openlayer-ruby/commit/102f6fb531cc81b046d27550788d508015c3674c))

## 0.0.2 (2025-10-02)

Full Changelog: [v0.0.1...v0.0.2](https://github.com/openlayer-ai/openlayer-ruby/compare/v0.0.1...v0.0.2)

### Bug Fixes

* coroutine leaks from connection pool ([c916cc0](https://github.com/openlayer-ai/openlayer-ruby/commit/c916cc0e7726963d08eefec4edca704a26393419))


### Chores

* configure new SDK language ([844cad0](https://github.com/openlayer-ai/openlayer-ruby/commit/844cad0761a069778244da35537b74ae6ceb56b5))
* update SDK settings ([3185146](https://github.com/openlayer-ai/openlayer-ruby/commit/318514613db1e7f5f63067383d35852413c9b02d))
