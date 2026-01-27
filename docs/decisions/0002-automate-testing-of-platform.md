# Approach for Automated Testing of the Platform

* Status: proposed
* Deciders: [list everyone involved in the decision] <!-- optional -->
* Date: [YYYY-MM-DD when the decision was last updated] <!-- optional -->

Technical Story: Spike: Automated testing for platform [[#6](https://github.com/navapbc/platform/issues/6)

## Context and Problem Statement

Testing the platform currently requires multiple time-consuming steps, involving
creating a new repo, copying over template code, creating infrastructure from
template code, and verifying that CI and CD works. Furthermore, splitting up the
platform into separate template-infra and template-application-* repositories
increases the importance of testing the pieces together in an integrated
fashion. In order to sustainably maintain development of the platform, we need a
way to test the platform in an automated fashion.

## Proposal

### Overview

* Have a CI GitHub Action in `platform` repo that runs regularly (e.g. weekly or daily)
* The `platform` CI will:
  1. Create a test repo `platform-test-[WORKFLOW_RUN_ID]`
  2. Install the `template-infra` into the test repo
  3. Install `template-application-nextjs` into the test repo
  4. Run through the steps to set up the terraform backend
  5. Spin up the application's infrastructure
  6. Push up a test commit
  7. Watch the GitHub action workflow runs for CI and CD
  8. Check that CI and CD both complete successfully
  9. Hit the deployed application's health check endpoint
  10. Destroy the infrastructure
  11. Delete the test repo

### Details

TBD

## Decision Outcome

TBD

### Positive Consequences

TBD

### Negative Consequences

TBD

## Pros and Cons of the Options <!-- optional -->

### [option 1]

[example | description | pointer to more information | …] <!-- optional -->

* Good, because [argument a]
* Good, because [argument b]
* Bad, because [argument c]
* … <!-- numbers of pros and cons can vary -->

### [option 2]

[example | description | pointer to more information | …] <!-- optional -->

* Good, because [argument a]
* Good, because [argument b]
* Bad, because [argument c]
* … <!-- numbers of pros and cons can vary -->

### [option 3]

[example | description | pointer to more information | …] <!-- optional -->

* Good, because [argument a]
* Good, because [argument b]
* Bad, because [argument c]
* … <!-- numbers of pros and cons can vary -->

## Links <!-- optional -->

* [Link type] [Link to ADR] <!-- example: Refined by [ADR-0005](0005-example.md) -->
* … <!-- numbers of links can vary -->
