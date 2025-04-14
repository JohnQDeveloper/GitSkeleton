#!/bin/bash
export FILTER_BRANCH_SQUELCH_WARNING=1

git filter-branch -f --env-filter '
  author_ts="$(git show -q --format="%at" "$GIT_COMMIT")"
  committer_ts="$(git show -q --format="%ct" "$GIT_COMMIT")"
  GIT_AUTHOR_DATE="$(date -d "@$author_ts" +"%Y-%m-%dT00:00:00 +0000")"
  GIT_COMMITTER_DATE="$(date -d "@$committer_ts" +"%Y-%m-%dT00:00:00 +0000")"
  ' -- --all

git push --force
