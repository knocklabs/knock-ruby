# Changelog

## 1.18.0 (2025-10-28)

Full Changelog: [v1.17.0...v1.18.0](https://github.com/knocklabs/knock-ruby/compare/v1.17.0...v1.18.0)

### Features

* **api:** api update ([276ab1a](https://github.com/knocklabs/knock-ruby/commit/276ab1acb42bffaf4e23bf2af3a752200d2a3b22))
* **api:** api update ([32ea1e5](https://github.com/knocklabs/knock-ruby/commit/32ea1e552eeeb0e4fabb7074c5d8c4e52cc02ff1))
* **api:** api update ([4d00bd1](https://github.com/knocklabs/knock-ruby/commit/4d00bd1384ab9303995cb23adf1791647265d049))

## 1.17.0 (2025-10-24)

Full Changelog: [v1.16.0...v1.17.0](https://github.com/knocklabs/knock-ruby/compare/v1.16.0...v1.17.0)

### Features

* **api:** api update ([fd477b8](https://github.com/knocklabs/knock-ruby/commit/fd477b877f0a74c124a531a9f9b09e52905383b7))
* **api:** api update ([e47f831](https://github.com/knocklabs/knock-ruby/commit/e47f831b8ec05779d0003c27f701f9b0fd1c85b5))
* **api:** api update ([2b5808c](https://github.com/knocklabs/knock-ruby/commit/2b5808ccb42252fdebc45486d231aba4dfa9a7b7))
* **api:** api update ([99546b7](https://github.com/knocklabs/knock-ruby/commit/99546b73a6a6440e373059c1bdc71d48532af3fa))
* **api:** api update ([042c92a](https://github.com/knocklabs/knock-ruby/commit/042c92a80665539dfeda7c2b8de0acead59fcfb1))
* **api:** api update ([0f7fc4a](https://github.com/knocklabs/knock-ruby/commit/0f7fc4a35357d5cf6cb8394f0df9b60598d15e63))
* handle thread interrupts in the core HTTP client ([6161a77](https://github.com/knocklabs/knock-ruby/commit/6161a7749b9fa424f49758cebd3753d135a84095))


### Bug Fixes

* absolutely qualified uris should always override the default ([2bb6341](https://github.com/knocklabs/knock-ruby/commit/2bb63414bbf3b9d9b4b996cd75341a183a6aa792))
* should not reuse buffers for `IO.copy_stream` interop ([6464681](https://github.com/knocklabs/knock-ruby/commit/64646819574a19a1eb4969dc4abbc1d718ed7f4f))


### Chores

* ignore linter error for tests having large collections ([20f8ea6](https://github.com/knocklabs/knock-ruby/commit/20f8ea6a8cae8b3463b48d48f4ad065df465cddb))
* simplify model references ([c126d85](https://github.com/knocklabs/knock-ruby/commit/c126d85300aa1ffe211fbc8e1c25eff4ca25ab7e))

## 1.16.0 (2025-10-07)

Full Changelog: [v1.15.0...v1.16.0](https://github.com/knocklabs/knock-ruby/compare/v1.15.0...v1.16.0)

### Features

* **api:** api update ([f006836](https://github.com/knocklabs/knock-ruby/commit/f0068369fd1ad7dfa9843753966d6bfb3758e1ea))
* **api:** api update ([8f74167](https://github.com/knocklabs/knock-ruby/commit/8f74167231ab9aba28065beb23922d7c4cba9cea))
* **api:** api update ([27835b7](https://github.com/knocklabs/knock-ruby/commit/27835b7a76ec99e59511e5f92e0ddb88a48ed608))
* **api:** manual updates ([22850d8](https://github.com/knocklabs/knock-ruby/commit/22850d8c0b0605e045cc7d19020ac9f9c97ae163))


### Bug Fixes

* always send `filename=...` for multipart requests where a file is expected ([1a6d4ac](https://github.com/knocklabs/knock-ruby/commit/1a6d4acdcf66e42ddc5b813a61dc7c535e5f90ee))
* coroutine leaks from connection pool ([3bc1ff2](https://github.com/knocklabs/knock-ruby/commit/3bc1ff25c7b0cda3f712779d67a8c5f6f5b28969))
* **internal:** use null byte as file separator in the fast formatting script ([d8c723e](https://github.com/knocklabs/knock-ruby/commit/d8c723ed107313e3cc641ea8b68eb5ee8543bfcc))
* shorten multipart boundary sep to less than RFC specificed max length ([66403e8](https://github.com/knocklabs/knock-ruby/commit/66403e82039587fbf154aff05c2cbfc1e56066a0))


### Performance Improvements

* faster code formatting ([b578cd0](https://github.com/knocklabs/knock-ruby/commit/b578cd025eefbe8b3ba863403c8a59f9b0acc6bf))


### Chores

* allow fast-format to use bsd sed as well ([c57f00b](https://github.com/knocklabs/knock-ruby/commit/c57f00b885b596ea799f8929986228240fa3aab4))

## 1.15.0 (2025-09-23)

Full Changelog: [v1.14.0...v1.15.0](https://github.com/knocklabs/knock-ruby/compare/v1.14.0...v1.15.0)

### Features

* **api:** api update ([9e20ef7](https://github.com/knocklabs/knock-ruby/commit/9e20ef78f55bd98a4a44ad32a85c63d5b0f7da97))
* **api:** api update ([f6a598f](https://github.com/knocklabs/knock-ruby/commit/f6a598f8caab8d8fadc652efa12ebbbc62a5d3dc))
* **api:** set idempotency key header by default ([14e4fac](https://github.com/knocklabs/knock-ruby/commit/14e4face034def9abbb45120d5c1af1cb415b689))


### Chores

* improve example values ([3745058](https://github.com/knocklabs/knock-ruby/commit/37450588f7a937fec2ab49ab04c7142493c7d646))

## 1.14.0 (2025-09-19)

Full Changelog: [v1.13.0...v1.14.0](https://github.com/knocklabs/knock-ruby/compare/v1.13.0...v1.14.0)

### Features

* expose response headers for both streams and errors ([5cbf48f](https://github.com/knocklabs/knock-ruby/commit/5cbf48f94eecc974a2e3d9a200a04bbfc9d08db4))


### Chores

* do not install brew dependencies in ./scripts/bootstrap by default ([daac840](https://github.com/knocklabs/knock-ruby/commit/daac84029a5ba728f68163b9cccb77dacf56a6b1))

## 1.13.0 (2025-09-10)

Full Changelog: [v1.12.0...v1.13.0](https://github.com/knocklabs/knock-ruby/compare/v1.12.0...v1.13.0)

### Features

* **api:** api update ([1d41369](https://github.com/knocklabs/knock-ruby/commit/1d41369c045725172e6910a4fb4ee546218e55d3))
* **api:** api update ([4cbcd27](https://github.com/knocklabs/knock-ruby/commit/4cbcd27c56bf486d159ceefc0890014184aab50d))
* **api:** api update ([4cd0c7d](https://github.com/knocklabs/knock-ruby/commit/4cd0c7d4541e1da08e5489df81b4732ff995e8cb))
* **api:** api update ([2435936](https://github.com/knocklabs/knock-ruby/commit/243593653acf3381827206d7c3844350fb395fce))
* **api:** api update ([ed2ca0f](https://github.com/knocklabs/knock-ruby/commit/ed2ca0f0d3d587b2fca1ff4a0fb3dcfec7b67b75))

## 1.12.0 (2025-09-02)

Full Changelog: [v1.11.2...v1.12.0](https://github.com/knocklabs/knock-ruby/compare/v1.11.2...v1.12.0)

### Features

* **api:** api update ([eb5bc19](https://github.com/knocklabs/knock-ruby/commit/eb5bc19f01bd3967f65d9a1f744198e670c8648a))
* **api:** api update ([6e8b935](https://github.com/knocklabs/knock-ruby/commit/6e8b93592161426bc6bd262ede1c88708a34d399))
* **api:** api update ([96f3d1b](https://github.com/knocklabs/knock-ruby/commit/96f3d1b4edb8123888e44f16b55179fcd0d91c87))
* **api:** api update ([1cd8e5b](https://github.com/knocklabs/knock-ruby/commit/1cd8e5b87e259796d04e9a64292e41c905ce8a0f))

## 1.11.2 (2025-08-24)

Full Changelog: [v1.11.1...v1.11.2](https://github.com/knocklabs/knock-ruby/compare/v1.11.1...v1.11.2)

### Chores

* add json schema comment for rubocop.yml ([83abcfa](https://github.com/knocklabs/knock-ruby/commit/83abcfa2c17d0495243044a3868ed3e26120c1c3))

## 1.11.1 (2025-08-19)

Full Changelog: [v1.11.0...v1.11.1](https://github.com/knocklabs/knock-ruby/compare/v1.11.0...v1.11.1)

### Bug Fixes

* bump sorbet version and fix new type errors from the breaking change ([0194974](https://github.com/knocklabs/knock-ruby/commit/0194974b049c8c69ce3749f1bc8086b724a39272))

## 1.11.0 (2025-08-15)

Full Changelog: [v1.10.3...v1.11.0](https://github.com/knocklabs/knock-ruby/compare/v1.10.3...v1.11.0)

### Features

* **api:** api update ([d0ce3fe](https://github.com/knocklabs/knock-ruby/commit/d0ce3fe4004f9f5b663d88f6eea02c1def7a26fa))

## 1.10.3 (2025-08-12)

Full Changelog: [v1.10.2...v1.10.3](https://github.com/knocklabs/knock-ruby/compare/v1.10.2...v1.10.3)

### Bug Fixes

* **internal:** ensure sorbet test always runs serially ([66f6791](https://github.com/knocklabs/knock-ruby/commit/66f67914b8f2c811e98c1a7806fd361463614271))


### Chores

* collect metadata from type DSL ([7221a47](https://github.com/knocklabs/knock-ruby/commit/7221a470e5604d56b1e1a91b3504f3400a8e62d2))
* **internal:** codegen related update ([83d9236](https://github.com/knocklabs/knock-ruby/commit/83d9236dedfc1d4dae46e0b1abed22206461df80))
* **internal:** increase visibility of internal helper method ([18a3bc1](https://github.com/knocklabs/knock-ruby/commit/18a3bc1e07170a0c0e2595ac17c8a0e74a4855ff))
* **internal:** update comment in script ([c0a5fc6](https://github.com/knocklabs/knock-ruby/commit/c0a5fc6a4760bb057e222e490700e702f54480fe))
* update @stainless-api/prism-cli to v5.15.0 ([f92c3e6](https://github.com/knocklabs/knock-ruby/commit/f92c3e6157c76770e840c6c8363bd57565e3e465))
* update contribute.md ([3ff1a87](https://github.com/knocklabs/knock-ruby/commit/3ff1a87c6bb8111da0f6127d38cc19c2fa5d54fa))

## 1.10.2 (2025-07-21)

Full Changelog: [v1.10.1...v1.10.2](https://github.com/knocklabs/knock-ruby/compare/v1.10.1...v1.10.2)

### Chores

* fix formatting ([e281fdc](https://github.com/knocklabs/knock-ruby/commit/e281fdce28d18ae794f3364f5046e7d65de39844))
* **internal:** version bump ([0aaa054](https://github.com/knocklabs/knock-ruby/commit/0aaa054c1d389b3679fc06cf0ffa95cfc7f6c774))

## 1.10.1 (2025-07-21)

Full Changelog: [v1.10.0...v1.10.1](https://github.com/knocklabs/knock-ruby/compare/v1.10.0...v1.10.1)

### Chores

* **internal:** version bump ([eb7a32b](https://github.com/knocklabs/knock-ruby/commit/eb7a32b5f4bc292dd5b197fd3838ca7c340bac36))

## 1.10.0 (2025-07-15)

Full Changelog: [v1.9.0...v1.10.0](https://github.com/knocklabs/knock-ruby/compare/v1.9.0...v1.10.0)

### Features

* **api:** api update ([d8ce1f1](https://github.com/knocklabs/knock-ruby/commit/d8ce1f14fbfd984d72a8eaa81a060659f46eb9b7))
* **api:** api update ([b3ed2ae](https://github.com/knocklabs/knock-ruby/commit/b3ed2ae46f54a0e046a8bcef0492c6ae6ee2555a))


### Chores

* **ci:** only run for pushes and fork pull requests ([854d6f0](https://github.com/knocklabs/knock-ruby/commit/854d6f0a527695decdb8e0e4a0093bc3d94eff9f))
* **internal:** allow streams to also be unwrapped on a per-row basis ([f77e1d6](https://github.com/knocklabs/knock-ruby/commit/f77e1d62802fc88dcb62764834ac1c71005d1f87))

## 1.9.0 (2025-06-27)

Full Changelog: [v1.8.1...v1.9.0](https://github.com/knocklabs/knock-ruby/compare/v1.8.1...v1.9.0)

### Features

* **api:** api update ([fc8b2d2](https://github.com/knocklabs/knock-ruby/commit/fc8b2d240d0ae0185fea80a1be818505f94f1d16))
* **api:** api update ([f4f2f96](https://github.com/knocklabs/knock-ruby/commit/f4f2f96ded6152ac1d38ddbded881e306cd682ec))


### Bug Fixes

* **ci:** release-doctor — report correct token name ([dd5f4e2](https://github.com/knocklabs/knock-ruby/commit/dd5f4e20bca8d0881af1593f0a164963e31a1bb9))

## 1.8.1 (2025-06-18)

Full Changelog: [v1.8.0...v1.8.1](https://github.com/knocklabs/knock-ruby/compare/v1.8.0...v1.8.1)

### Bug Fixes

* issue where we cannot mutate arrays on base model derivatives ([2c56679](https://github.com/knocklabs/knock-ruby/commit/2c56679d7f62da36dcae21fe5944d24211afe854))


### Chores

* **ci:** enable for pull requests ([985de4e](https://github.com/knocklabs/knock-ruby/commit/985de4e91baf5684d7cf308f6e3de661fbb8163d))

## 1.8.0 (2025-06-13)

Full Changelog: [v1.7.0...v1.8.0](https://github.com/knocklabs/knock-ruby/compare/v1.7.0...v1.8.0)

### Features

* **api:** api update ([c69a4d1](https://github.com/knocklabs/knock-ruby/commit/c69a4d1cb01e0e8e7fb930b862ebeb06ae217bfc))

## 1.7.0 (2025-06-12)

Full Changelog: [v1.6.0...v1.7.0](https://github.com/knocklabs/knock-ruby/compare/v1.6.0...v1.7.0)

### Features

* **api:** api update ([ccc6df0](https://github.com/knocklabs/knock-ruby/commit/ccc6df0d616d93198a605ec4c986e03369a8843b))
* **api:** api update ([fddf322](https://github.com/knocklabs/knock-ruby/commit/fddf3226958f8a212c5c3fa4d0dc8f72c01dcbe5))


### Chores

* **ci:** link to correct github repo ([acd8f88](https://github.com/knocklabs/knock-ruby/commit/acd8f8882a660c449b45113b848944327382f1a0))

## 1.6.0 (2025-06-06)

Full Changelog: [v1.5.0...v1.6.0](https://github.com/knocklabs/knock-ruby/compare/v1.5.0...v1.6.0)

### Features

* **api:** api update ([53aa9c9](https://github.com/knocklabs/knock-ruby/commit/53aa9c9ebd4a8e7be2fd5bdf08a4b749f6b9d116))


### Bug Fixes

* default content-type for text in multi-part formdata uploads should be text/plain ([de655f0](https://github.com/knocklabs/knock-ruby/commit/de655f0dd9194b4c30d7ad26e2da98f6cba51a0f))

## 1.5.0 (2025-06-04)

Full Changelog: [v1.4.0...v1.5.0](https://github.com/knocklabs/knock-ruby/compare/v1.4.0...v1.5.0)

### Features

* **api:** api update ([b4a8a6f](https://github.com/knocklabs/knock-ruby/commit/b4a8a6f6bd5451fb68be75c19b5b08b7629543cc))


### Bug Fixes

* `to_sorbet_type` should not return branded types ([2fe0597](https://github.com/knocklabs/knock-ruby/commit/2fe05973673d02ced0a04abc32f0ea079ff9313f))

## 1.4.0 (2025-05-29)

Full Changelog: [v1.3.0...v1.4.0](https://github.com/knocklabs/knock-ruby/compare/v1.3.0...v1.4.0)

### Features

* **api:** api update ([f1d1f0f](https://github.com/knocklabs/knock-ruby/commit/f1d1f0f262a0cecec5f416873be4d3ee6418ec94))

## 1.3.0 (2025-05-28)

Full Changelog: [v1.2.0...v1.3.0](https://github.com/knocklabs/knock-ruby/compare/v1.2.0...v1.3.0)

### Features

* **api:** api update ([c47c0e6](https://github.com/knocklabs/knock-ruby/commit/c47c0e68992f447af50889cd4435d136e5fa2904))
* **api:** api update ([346b571](https://github.com/knocklabs/knock-ruby/commit/346b571779ade48f5954f018ab3f7d8f8dbdbdd9))


### Bug Fixes

* prevent rubocop from mangling `===` to `is_a?` check ([9ddd5e9](https://github.com/knocklabs/knock-ruby/commit/9ddd5e93e0ffb56f07a5216f64ff7a4eaab43468))
* sorbet types for enums, and make tapioca detection ignore `tapioca dsl` ([83ce737](https://github.com/knocklabs/knock-ruby/commit/83ce737225a0be39758aa1affcef2352a7e02502))


### Chores

* **docs:** grammar improvements ([3913113](https://github.com/knocklabs/knock-ruby/commit/3913113994e8e2e203fe2ab60a6e5fd817a130c5))
* force utf-8 locale via `RUBYOPT` when formatting ([ec69c77](https://github.com/knocklabs/knock-ruby/commit/ec69c77c94ba059d577798a05098847bb304b36b))
* use fully qualified names for yard annotations and rbs aliases ([ef4ddca](https://github.com/knocklabs/knock-ruby/commit/ef4ddca29f6bfa5d707415ee12e18a08738a3293))

## 1.2.0 (2025-05-21)

Full Changelog: [v1.1.0...v1.2.0](https://github.com/knocklabs/knock-ruby/compare/v1.1.0...v1.2.0)

### Features

* **api:** api update ([a2f7806](https://github.com/knocklabs/knock-ruby/commit/a2f7806c82832774d11f588232b5e8f86d126800))


### Bug Fixes

* correctly instantiate sorbet type aliases for enums and unions ([cb2a162](https://github.com/knocklabs/knock-ruby/commit/cb2a1627efa4a45d8cdee2844f963797fdfd9e59))


### Chores

* refine Yard and Sorbet types and ensure linting is turned on for examples ([4f2f24f](https://github.com/knocklabs/knock-ruby/commit/4f2f24fa37eaef8744a3bce3d02918d2e2929a69))
* use sorbet union aliases where available ([80047be](https://github.com/knocklabs/knock-ruby/commit/80047be1c2fe8a496da2adf2ed99c2e0b146706d))
* whitespaces ([6205cfa](https://github.com/knocklabs/knock-ruby/commit/6205cfa7ed48346b98f38131439e8f5e598853b1))

## 1.1.0 (2025-05-15)

Full Changelog: [v1.0.0...v1.1.0](https://github.com/knocklabs/knock-ruby/compare/v1.0.0...v1.1.0)

### Features

* **api:** api update ([02959e8](https://github.com/knocklabs/knock-ruby/commit/02959e82c2148f3a1a3e9e6021d48298644305e9))
* **api:** api update ([6bc31c4](https://github.com/knocklabs/knock-ruby/commit/6bc31c4a6c0a81e096267f1c5a1cb3a9f8b29dac))
* **api:** removes duplicate activities section ([e83c36e](https://github.com/knocklabs/knock-ruby/commit/e83c36e5c6e88a457f7306ab7515d03c1ae0a7bc))
* bump default connection pool size limit to minimum of 99 ([b04fe89](https://github.com/knocklabs/knock-ruby/commit/b04fe8949b02a6f56979748226d24b2a30e2ea62))
* expose base client options as read only attributes ([4f7b9a2](https://github.com/knocklabs/knock-ruby/commit/4f7b9a248aed50a6b0077a5db4f34b764f86ffd5))
* expose recursive `#to_h` conversion ([153be54](https://github.com/knocklabs/knock-ruby/commit/153be54a04fd0b2ac0dd27278d96be70cc87b1e1))
* support sorbet aliases at the runtime ([5e9d146](https://github.com/knocklabs/knock-ruby/commit/5e9d146ae0303f729ebeb949d0d6bb4a9943e4be))


### Bug Fixes

* **internal:** ensure formatting always uses c.utf-8 locale ([9f8e834](https://github.com/knocklabs/knock-ruby/commit/9f8e8345f2206a5b060d55838f9e22226fa47589))
* **internal:** fix formatting script for macos ([11e651e](https://github.com/knocklabs/knock-ruby/commit/11e651eaea730816e2a558cf708382eed559a71c))
* **internal:** update gemspec name ([2a1af3a](https://github.com/knocklabs/knock-ruby/commit/2a1af3a8e6f8dbea4f448ce3acbdf694f993aea8))


### Chores

* accept all nd-json mimetype variants ([f13a7aa](https://github.com/knocklabs/knock-ruby/commit/f13a7aa66b6ef36d0d044cea3674bfeef1f18ac2))
* always check if current page is empty in `next_page?` ([b43503c](https://github.com/knocklabs/knock-ruby/commit/b43503c22d1c7ca08adcf1f8a01d3d3c48608962))
* fix misc linting / minor issues ([4d8eadc](https://github.com/knocklabs/knock-ruby/commit/4d8eadcee14d85c3eb7f95b0417b74d932b344ad))
* **internal:** codegen related update ([1ab97b3](https://github.com/knocklabs/knock-ruby/commit/1ab97b344adc1bebd79bef05e33bf825500e91e2))
* **internal:** codegen related update ([1cdabfe](https://github.com/knocklabs/knock-ruby/commit/1cdabfed4481b5bc2f1892647c604f37ec4f201b))
* re-export top level models under library namespace ([a2bbf55](https://github.com/knocklabs/knock-ruby/commit/a2bbf558687ac11cdb6d72e9d54c47e0a8998e7b))
* remove Gemfile.lock during bootstrap ([b0ad2cd](https://github.com/knocklabs/knock-ruby/commit/b0ad2cd268ff2f6fe6f96d8cf1baa7296287eec4))
* reorganize type aliases ([c50a167](https://github.com/knocklabs/knock-ruby/commit/c50a16701c7a044b1b0b5c2b6aefffe2fc1eb102))
* revert ignoring Gemfile.lock ([c005465](https://github.com/knocklabs/knock-ruby/commit/c0054656e506496ba90c6c3b68c18e2017531fec))
* validate request option coercion correctness ([611e596](https://github.com/knocklabs/knock-ruby/commit/611e5969960440e4004a73158af6a26da4fb4755))


### Documentation

* illustrate environmental defaults for auth variables ([a6de609](https://github.com/knocklabs/knock-ruby/commit/a6de609be150aa0d64298b0cb8a696c27c3f724c))
* rewrite much of README.md for readability ([0530377](https://github.com/knocklabs/knock-ruby/commit/0530377bd49cb6e65155c36ed30239fa64b3bc7b))

## 1.0.0 (2025-05-01)

Full Changelog: [v0.6.2...v1.0.0](https://github.com/knocklabs/knock-ruby/compare/v0.6.2...v1.0.0)

### Features

* **api:** manual updates ([0d8043c](https://github.com/knocklabs/knock-ruby/commit/0d8043c40d338254cffd95c5bf060c31e01df817))
* **api:** manual updates ([4653cd4](https://github.com/knocklabs/knock-ruby/commit/4653cd4dc7b6f2350040335188c828248b91ac8e))
* **api:** manual updates ([5db7143](https://github.com/knocklabs/knock-ruby/commit/5db71437a429d5c23a01679ca17c7bd33e76927b))


### Chores

* sync repo ([603bdff](https://github.com/knocklabs/knock-ruby/commit/603bdff217b859fa636333ee19f4e8a0099a2829))
* update SDK settings ([f89c129](https://github.com/knocklabs/knock-ruby/commit/f89c129b79de76e1b69b99d53c036ea5081d1198))
* update SDK settings ([02bbb1c](https://github.com/knocklabs/knock-ruby/commit/02bbb1cdd204dc68f5c70ac979ac08679dcdbbec))
* update SDK settings ([5feae14](https://github.com/knocklabs/knock-ruby/commit/5feae14501d46021f9f5bfd9da198816a9fb680e))
* update SDK settings ([bdd01f1](https://github.com/knocklabs/knock-ruby/commit/bdd01f128840d10797e51673a3caf66f70adc033))
