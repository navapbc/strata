# Separate infra template code and application template code into different repositories

* Status: accepted
* Deciders: @rocketnova @lorenyu
* Date: 2022-09-08

Technical Story: [description | ticket/issue URL] <!-- optional -->

## Context and Problem Statement

We want to add support for a Python tech stack to the Platform, but want to avoid duplicating common infrastructure code.

### Additional context

The NJ UI project intends to develop a Python API application, which is the second application (after WIC) that will have a Python application. We expect that Python will be a common choice for future projects, and want to have a way to support it in the Platform. There is already a template-application-nextjs template that contains template infrastructure code as well as template code for the NextJS application. Creating a template-application-flask in the same manner would end up duplicating the infrastructure code.

## Considered Options

* Create `template-application-flask` similar to `template-application-nextjs`
* Separate the infrastructure code from `template-application-nextjs` into a separate repo `template-infra`, and create `template-application-flask` with just the python application code

## Decision Outcome

Decision was to rename the `template-application-nextjs` repo to `template-infra` and create a new repo `template-application-nextjs` with the same git history. This effectively splits up the repo into two parts. The infra part will eventually just contain the infra code, and the other repo will just contain the application code.

We also created `platform` repo to be the landing page for the platform where we can put instructions for how to use all the pieces together.

### See also

* [Slack thread about adding Python stack/API to the platform](https://nava.slack.com/archives/C03G1SWD9H7/p1662570596982139)
* [Follow up Slack thread about naming conventions for separate repos](https://nava.slack.com/archives/C03G1SWD9H7/p1662676260639049?thread_ts=1662665280.211029&cid=C03G1SWD9H7)
