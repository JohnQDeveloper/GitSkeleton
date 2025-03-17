# PER REPOSITORY
```
cd YOUR_REPOSITORY

cp ~/Projects/PreCommitSkeleton/.pre-commit-config.yaml ./

pre-commit autoupdate

pre-commit install

detect-secrets scan > .secrets.baseline

```

# Default Protected Branches
* master
* main

These should only be updated via pull request except for the initial commit.

# UPDATING SECRETS BASELINE
```
detect-secrets scan --baseline .secrets.baseline
```

# INSTALL DEPENDENCIES
* Make sure $HOME/.local/bin is in your $PATH (default pip location on ubuntu)
* pip install pre-commit - https://pre-commit.com/#install
* brew install detect-secrets - https://github.com/Yelp/detect-secrets
* brew install gitleaks - https://github.com/gitleaks/gitleaks
