# Homebrew tap for aesx

[aesx](https://github.com/yohasacura/aesx) is free, offline, open-source file encryption for
macOS, Linux and Windows: one password, one file or folder in, one `.aesx` file out, with
AES-256-GCM and no third-party code.

```bash
brew install yohasacura/tap/aesx
```

Afterwards `brew upgrade` keeps it current, and `brew uninstall aesx` removes it.

## What this installs

The formula does not build anything. It downloads the executable that the
[aesx release workflow](https://github.com/yohasacura/aesx/actions/workflows/release.yml) built
for your system (macOS on Apple Silicon or Intel, Linux on x64 or ARM64), checks its SHA-256
against the value in [Formula/aesx.rb](Formula/aesx.rb), and puts it on your `PATH`. Installed
this way, the file is not quarantined, so macOS does not ask about it on first launch.

## How it stays current

[update.yml](.github/workflows/update.yml) looks at the latest aesx release once a day. It
downloads the release files, verifies their build provenance attestation (releases from 1.1.0
on have one), computes the checksums itself, and commits the new formula.
[test.yml](.github/workflows/test.yml) then installs it with Homebrew on macOS (both
architectures) and on Linux, and runs it.

To follow a release at once instead of waiting for the daily run:

```bash
gh workflow run update.yml --repo yohasacura/homebrew-tap
```

## Issues

Problems with aesx itself belong in the
[aesx repository](https://github.com/yohasacura/aesx/issues); problems with installing it
through Homebrew belong here.

## License

[Apache License 2.0](LICENSE), like aesx.
