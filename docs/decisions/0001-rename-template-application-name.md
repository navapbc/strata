# Rename Template Applications to Use Template Name instead of `app`

* Status: Proposed
* Deciders: @rocketnova, @sawyerh, @@@@, @@@@
* Date: ####-##-##

## Context

I've previously argued for naming the application directory in the application templates something generic and consistent like `app`. This was grounded in my past experience heavily using docker for lots of microservices with separate git repos. In those conditions, consistency across microservices (i.e. all applications are named `app`) is very helpful, especially for cross-repo tooling.

## Problem Statement

This has proven to not be the best fit for our templates because:

- Many/most of the projects that use these templates prefer to use monorepos, sometimes with multiple applications. In these conditions, it's more useful to name the applications something that differentiates them from one another (e.g. `portal` and `api`).
- We have [tickets](https://github.com/navapbc/platform/issues/20) outlining that we want to make it easier to support multiple applications. It's not currently obvious or straightforward for anyone not familiar with the platform.
- `app` is too generic and many frameworks already use that keyword, which causes 2 related issues:
    - Projects that use our templates end up with directory structures that have nested app folders (i.e. `/app/app`)
    - It's hard to find and replace `app` because you get a lot of false-positives that should not be replaced

## Decision Outcome

1. Use a truncated version of the template application name (e.g. `app-nextjs` for `template-application-nextjs`, `app-flask` for `template-application-flask`) for the application directory
    - This requires renaming the `/app` to `/app-nextjs` in the application templates
2. Use the truncated template application for all in-code references to `app`
    - This requires renaming any files that use the name `app` in the application templates
    - This may require updating the infrastructure template
    - This may require updating the infrastructure tests

Good because:

* `app-*` is unique
* `app-*` is uses our existing naming convention
* Using a name like this aligns well with the milestone to support multi-app because it will be easier to write tooling to find-and-replace a unique name
* `template-application-*` is long and will run into character limitations, especially with terraform

Bad because:

* `app-*` isn't exactly the same as our existing naming convention
