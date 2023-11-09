## [1.2.5](https://github.com/Johnny-Knighten/dockerhub-plus-semver-ci-test/compare/1.2.4...1.2.5) (2023-11-09)


### Bug Fixes

* made release dry run match normal run ([f7197fe](https://github.com/Johnny-Knighten/dockerhub-plus-semver-ci-test/commit/f7197fe043f67b284aeecc66b19dd613ffc262d9))
* merged all releases into single workflow ([32333da](https://github.com/Johnny-Knighten/dockerhub-plus-semver-ci-test/commit/32333da382ddf74f34b1800434f421544f88cde1))
* passing of version to dockerhub release and dry run ([a7e2f27](https://github.com/Johnny-Knighten/dockerhub-plus-semver-ci-test/commit/a7e2f27270a064741f7f4b6bef54c0f480efb040))
* updated output to use multiline ([8fc6726](https://github.com/Johnny-Knighten/dockerhub-plus-semver-ci-test/commit/8fc6726575555ee0929ba562643c844f44e69a72))

## [1.2.5-next.1](https://github.com/Johnny-Knighten/dockerhub-plus-semver-ci-test/compare/1.2.4...1.2.5-next.1) (2023-11-09)


### Bug Fixes

* made release dry run match normal run ([f7197fe](https://github.com/Johnny-Knighten/dockerhub-plus-semver-ci-test/commit/f7197fe043f67b284aeecc66b19dd613ffc262d9))
* merged all releases into single workflow ([32333da](https://github.com/Johnny-Knighten/dockerhub-plus-semver-ci-test/commit/32333da382ddf74f34b1800434f421544f88cde1))
* passing of version to dockerhub release and dry run ([a7e2f27](https://github.com/Johnny-Knighten/dockerhub-plus-semver-ci-test/commit/a7e2f27270a064741f7f4b6bef54c0f480efb040))

## [1.2.4](https://github.com/Johnny-Knighten/dockerhub-plus-semver-ci-test/compare/1.2.3...1.2.4) (2023-11-09)


### Bug Fixes

* removed ref on checkout in release-github ([31d3a27](https://github.com/Johnny-Knighten/dockerhub-plus-semver-ci-test/commit/31d3a27f6132a249488c137352c201cb27670cd9))
* switch all on statements to match a PR focused workflow ([b62b81c](https://github.com/Johnny-Knighten/dockerhub-plus-semver-ci-test/commit/b62b81c81c7a5559b159de739ec41354320c374b))

## [1.2.4-next.1](https://github.com/Johnny-Knighten/dockerhub-plus-semver-ci-test/compare/1.2.3...1.2.4-next.1) (2023-11-09)


### Bug Fixes

* removed ref on checkout in release-github ([31d3a27](https://github.com/Johnny-Knighten/dockerhub-plus-semver-ci-test/commit/31d3a27f6132a249488c137352c201cb27670cd9))
* switch all on statements to match a PR focused workflow ([b62b81c](https://github.com/Johnny-Knighten/dockerhub-plus-semver-ci-test/commit/b62b81c81c7a5559b159de739ec41354320c374b))

## [1.2.3](https://github.com/Johnny-Knighten/dockerhub-plus-semver-ci-test/compare/1.2.2...1.2.3) (2023-11-09)


### Bug Fixes

* made checkout based on workflow_run.head_branch ([48ec38b](https://github.com/Johnny-Knighten/dockerhub-plus-semver-ci-test/commit/48ec38b8177d569bad1c07cbccbfa7f51b00da20))

## [1.2.2](https://github.com/Johnny-Knighten/dockerhub-plus-semver-ci-test/compare/1.2.1...1.2.2) (2023-11-08)


### Bug Fixes

* removed branches statment on release-dockerhub ([f1e8c85](https://github.com/Johnny-Knighten/dockerhub-plus-semver-ci-test/commit/f1e8c85ffa876e0b57e18476a273618a980cc328))

## [1.2.1](https://github.com/Johnny-Knighten/dockerhub-plus-semver-ci-test/compare/1.2.0...1.2.1) (2023-11-08)


### Bug Fixes

* added paths-ignore to prevent build-and-test from launching on release commit ([083e66b](https://github.com/Johnny-Knighten/dockerhub-plus-semver-ci-test/commit/083e66b95905f1243142aecffb1acc7763d91489))
* made default env.ACT var empty string ([65eb0b8](https://github.com/Johnny-Knighten/dockerhub-plus-semver-ci-test/commit/65eb0b89aaa76aac3147ef6b47ec3c13d12380a3))
* moved back to using workflow_run to trigger release-github ([78d2dcd](https://github.com/Johnny-Knighten/dockerhub-plus-semver-ci-test/commit/78d2dcd813b6cac80e2d28eb26c5a7b47c659cbc))
* moved release-dockerhub back to using on: push ([d0f9a82](https://github.com/Johnny-Knighten/dockerhub-plus-semver-ci-test/commit/d0f9a82eb93dbd166fad30d6a6c35cc2ef17d726))

## [1.2.0](https://github.com/Johnny-Knighten/dockerhub-plus-semver-ci-test/compare/1.1.7...1.2.0) (2023-11-08)


### Bug Fixes

* added content permissions to build and test workflow ([206624f](https://github.com/Johnny-Knighten/dockerhub-plus-semver-ci-test/commit/206624fdefdef9f5ce857704d15e68b574ab2afb))
* made env.ACT default to null value ([55fe293](https://github.com/Johnny-Knighten/dockerhub-plus-semver-ci-test/commit/55fe2937639b73106c8caaa9d750571698fe6733))
* updated event name in README example and added ACT var into workflow ([7bb029c](https://github.com/Johnny-Knighten/dockerhub-plus-semver-ci-test/commit/7bb029cf090d27873257b20671cd836b2c8f052f))


### Features

* added metadata action to geneterate container tags ([c8eb314](https://github.com/Johnny-Knighten/dockerhub-plus-semver-ci-test/commit/c8eb314520552007db32d38e6388149ff38f2dae))

## [1.1.7](https://github.com/Johnny-Knighten/dockerhub-plus-semver-ci-test/compare/1.1.6...1.1.7) (2023-11-05)


### Bug Fixes

* added checkout ([5efa4fd](https://github.com/Johnny-Knighten/dockerhub-plus-semver-ci-test/commit/5efa4fd6cf552f39156c27df99eec9f7db707e22))

## [1.1.6](https://github.com/Johnny-Knighten/dockerhub-plus-semver-ci-test/compare/1.1.5...1.1.6) (2023-11-05)


### Bug Fixes

* removed dockerfile line ([809ca59](https://github.com/Johnny-Knighten/dockerhub-plus-semver-ci-test/commit/809ca597e0bf72b3e40c8b2f51e0a98a6cad387e))

## [1.1.5](https://github.com/Johnny-Knighten/dockerhub-plus-semver-ci-test/compare/1.1.4...1.1.5) (2023-11-05)


### Bug Fixes

* added buildx setup ([5c797a0](https://github.com/Johnny-Knighten/dockerhub-plus-semver-ci-test/commit/5c797a0fda9478841cfe49dcfde41fce699a7f4a))

## [1.1.4](https://github.com/Johnny-Knighten/dockerhub-plus-semver-ci-test/compare/1.1.3...1.1.4) (2023-11-05)


### Bug Fixes

* removec cache statements and update cache-to/from ([25e2ac1](https://github.com/Johnny-Knighten/dockerhub-plus-semver-ci-test/commit/25e2ac1a98f46fc5d1e5971ee971d278a3ad0e7f))

## [1.1.3](https://github.com/Johnny-Knighten/dockerhub-plus-semver-ci-test/compare/1.1.2...1.1.3) (2023-11-05)


### Bug Fixes

* added cache-to ([5840b90](https://github.com/Johnny-Knighten/dockerhub-plus-semver-ci-test/commit/5840b901bcc276d84157b55cbb921735c45bf3eb))

## [1.1.2](https://github.com/Johnny-Knighten/dockerhub-plus-semver-ci-test/compare/1.1.1...1.1.2) (2023-11-05)


### Bug Fixes

* added cache-from back to build-push ([8e4b0c1](https://github.com/Johnny-Knighten/dockerhub-plus-semver-ci-test/commit/8e4b0c150a2cfa3a1470b4a84232126a7a4d8116))

## [1.1.1](https://github.com/Johnny-Knighten/dockerhub-plus-semver-ci-test/compare/1.1.0...1.1.1) (2023-11-05)


### Bug Fixes

* removed semantic release tag for now ([8aa792d](https://github.com/Johnny-Knighten/dockerhub-plus-semver-ci-test/commit/8aa792dfe445dd2f735ff84d2577478df9f2e2df))

## [1.1.0](https://github.com/Johnny-Knighten/dockerhub-plus-semver-ci-test/compare/1.0.0...1.1.0) (2023-11-05)


### Bug Fixes

* added test_content.txt to fix docker build ([45ff1d5](https://github.com/Johnny-Knighten/dockerhub-plus-semver-ci-test/commit/45ff1d5e7083f51a17c137212424f8dba5c16235))


### Features

* overhaul of workflows and added ci local tests ([6f143df](https://github.com/Johnny-Knighten/dockerhub-plus-semver-ci-test/commit/6f143df23f1ec9940f22448689031f1345577815))

## [1.0.0](https://github.com/Johnny-Knighten/dockerhub-plus-semver-ci-test/compare/...1.0.0) (2023-11-04)


### Features

* init commit ([6f12f1a](https://github.com/Johnny-Knighten/dockerhub-plus-semver-ci-test/commit/6f12f1a6f202377dbe38ab04c46bf12f5a374c41))
