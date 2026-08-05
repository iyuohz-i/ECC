#!/usr/bin/env bash
# Sync this fork with upstream and force-push to origin.
# If rebase hits conflicts, resolve them then run:
#   git rebase --continue && git push --force-with-lease origin main
set -euo pipefail

git fetch upstream
git rebase upstream/main
git push --force-with-lease origin main
