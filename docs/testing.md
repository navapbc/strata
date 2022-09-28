#

## Set up tests in GitHub Actions

Set up `GH_TOKEN` as an environment variable secret. The token needs to have
`repo:public_repo` and `delete_repo` scopes.

## Run tests in GitHub Actions

Run the "Test Platform" workflow. `GH_TOKEN` needs to be set up as an
environment secret and it needs to be unexpired.

## Setup tests locally

Copy `template.envrc` to `.envrc`

```bash
cp template.envrc .envrc
```

Create a [GitHub token](https://github.com/settings/tokens) with
`repo:public_repo` and `delete_repo` access and update `GH_TOKEN` in `.envrc`
to that token value.

## Run tests locally

Run `make test-repo` with a unique `REPO_ID` (e.g. use your username and/or a
unique number). For example:

```bash
REPO_ID=lorenyu-001 make test-repo
```

## Clean up after running tests

Run `make delete-test-repo` with the same `REPO_ID` that you used to create
the repo to delete the repo.

```bash
REPO_ID=lorenyu-001 make delete-test-repo
```
