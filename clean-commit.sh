#!/usr/bin/env bash

git filter-branch --commit-filter '
      if [ true ];
      then
              GIT_AUTHOR_NAME="truble maker";
              GIT_AUTHOR_EMAIL="original-trublemaker@users.noreply.github.com";
              git commit-tree "$@";
      else
              git commit-tree "$@";
      fi' HEAD

