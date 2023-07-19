# Nava Platform

Welcome to the Nava Platform! This is the home repository for Nava's Platform tools that empower teams to accelerate their delivery through self-service tools and training.

## Platform Templates

Platform templates allow project teams to quickly spin up new production ready applications. Engineers can copy the templates to their own project's GitHub repository in order to get started more quickly. The templates provide many default technical decisions that represent best practices for implementing government systems. These best practices were evolved by Nava over many years of experience working on GovTech projects, and will continue to evolve.

We currently have the following templates:

- [Infrastructure template](https://github.com/navapbc/template-infra) – this provides AWS infrastructure as well as some general non-infrastructure project tools like PR templates and ADR (architecture decision record) templates.
  - You can use the infrastructure template with either of the application templates, or with any other application that satisfies the infra template’s application requirements.
You can also use the infrastructure template with multiple applications at a time, but it will require a few steps to accomplish that configuration.
- [TypeScript Next.js application template](https://github.com/navapbc/template-application-nextjs) - Template for user-facing web applications built with the Next.js React framework.
  - This template can be used to build traditional server-based web applications. It can also be used to build APIs. However, if your project has a significant data engineering (e.g. ETL jobs and other batch processing jobs) component, a Python-based tech stack is recommended (see the Python Flask template).
  - This template can also be used to build static sites, but is currently not configured that way out of the box.
- [Python Flask application template](https://github.com/navapbc/template-application-flask) - Template for APIs and offline processes built with Python Flask.
  - This template can be used to build APIs. It can also be used to build simple user-facing applications. However, if your  application is heavily on the frontend, you may want to consider using the Next.js template since that comes already configured with internationalization, the US Web Design System, and Storybook.

### Getting started

To get started using the templates, first create a git repo for your project.

1. If you are starting from scratch and need infrastructure, then start with the [infra template](https://github.com/navapbc/template-infra) and follow the instructions on the template's README to install the template in a single command line.
2. Choose which application template you want to use based on whether you are building a primarily user-facing application (use the [Next.js template](https://github.com/navapbc/template-application-nextjs)) or primarily backend system (use the [Flask template](https://github.com/navapbc/template-application-flask)), and follow the instructions on the respective template's README to install the template.
