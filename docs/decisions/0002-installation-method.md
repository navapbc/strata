# How to use template-infra with template applications

* Status: proposed
* Deciders: [list everyone involved in the decision] <!-- optional -->
* Date: [YYYY-MM-DD when the decision was last updated] <!-- optional -->

Technical Story: User can follow instructions on how to use template-infra with either of the template applications [#2](https://github.com/navapbc/platform/issues/2)

## Context and Problem Statement

We previously decided to [separate infra and application templates into separate repos](./0001-separate-infra-and-application-templates.md). We need to decide how a user of the platform can use the infra template with one of the application templates or with their own custom application.

## Considered Options

1. User creates a repo from the template-infra repo, and replaces the `app` folder with one copied from an application template or their own.
2. User copies relevant files from the template-infra repo and from the application template repo.

## Decision Outcome

TBD

## Pros and Cons of the Options

### Create project repo from template-infra repo

Pros

* Fewer things to copy over (github actions, pull request template)

Cons

* Doesn't work with existing repo (e.g. if a user already has an application and wants to add template infra to the repo)
* May still need to have a setup script or instructions to remove/clean up files that aren't needed (e.g. the example application in template-infra is likely not needed)

### Copy files into existing repo

Add something like this to instructions in [template-infra](https://github.com/navapbc/template-infra)

```bash
# fetch latest version of template-infra
git clone --single-branch --branch main --depth 1 git@github.com:navapbc/template-infra.git

# copy docker-compose.yml
cp template-infra/docker-compose.yml .

# copy infra decision records
mkdir -p docs/
cp -r template-infra/docs/decisions/ docs/decisions/

# copy infra code
cp -r template-infra/infra/ infra/

# clean up template-infra folder
rm -fr template-infra
```

Can also simplify the middle lines into a script e.g.

```bash
# fetch latest version of template-infra
git clone --single-branch --branch main --depth 1 git@github.com:navapbc/template-infra.git

# install
./template-infra/scripts/install.sh

# clean up template-infra folder
rm -fr template-infra
```

Pros

* Allows user to install template to existing repo
* In some cases, potentially allows a user to update their project with new versions of the template

Cons

* Requires maintaining installation instructions (or script) for template-infra
