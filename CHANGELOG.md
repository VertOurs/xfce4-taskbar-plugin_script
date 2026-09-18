# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/).

## [Unreleased]

## [1.0.0] - 2026-09-18

### Added
- Internet connectivity check before proceeding
- Sudo privilege verification using `sudo true`
- Automatic detection of `nala` vs `apt`
- SPDX license identifier in script header
- `.gitignore` for common editor artifacts
- CI workflow running ShellCheck on every push and pull request

### Changed
- Package manager variable quoted to prevent word splitting
- Build steps (`autogen.sh`, `make`) run without root; only `make install` uses sudo
- Clone directory path extracted into a `PLUGIN_DIR` variable
- Error messages routed to stderr
- Conditions rewritten as negatives for early-exit clarity

### Fixed
- Script no longer continues silently after a failed command (`set -euo pipefail`)
- Re-runs no longer fail due to a leftover clone directory in `/tmp`
