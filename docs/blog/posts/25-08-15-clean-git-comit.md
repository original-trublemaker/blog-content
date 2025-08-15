---
date: 2025-08-15
categories:
  - Git  
---

# Cleanup git commit

Run

```shell
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
```

to overwrite all author names and author emails in **all** commit history.

One can also replace `true` with a predicate to just replace matched commits.


