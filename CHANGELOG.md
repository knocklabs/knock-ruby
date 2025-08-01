# Changelog

## 1.10.3 (2025-08-01)

Full Changelog: [v1.10.2...v1.10.3](https://github.com/knocklabs/knock-ruby/compare/v1.10.2...v1.10.3)

### Bug Fixes

* **internal:** ensure sorbet test always runs serially ([66f6791](https://github.com/knocklabs/knock-ruby/commit/66f67914b8f2c811e98c1a7806fd361463614271))


### Chores

* **internal:** increase visibility of internal helper method ([18a3bc1](https://github.com/knocklabs/knock-ruby/commit/18a3bc1e07170a0c0e2595ac17c8a0e74a4855ff))
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
