# Changelog

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
