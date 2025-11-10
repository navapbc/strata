<p>
  <img src="docs/assets/Nava-Strata-Logo-V01.svg" alt="Nava Strata" width="400">
</p>
<p>
  <p><b>Nava Strata is a modular, open-source platform that enables our government partners to rapidly and effectively modernize while avoiding vendor lock-in.</b></p>
</p>

<h4 align="center">
  <a href="https://github.com/navapbc/strata/blob/main/LICENSE">
    <img src="https://img.shields.io/badge/license-apache_2.0-red" alt="Nava Strata is released under the Apache 2.0 license" >
  </a>
  <a href="https://github.com/navapbc/strata/blob/main/CONTRIBUTING.md">
    <img src="https://img.shields.io/badge/PRs-Welcome-brightgreen" alt="PRs welcome!" />
  </a>
  <a href="https://github.com/navapbc/strata/issues">
    <img src="https://img.shields.io/github/commit-activity/m/navapbc/strata" alt="git commit activity" />
  </a>
  <a href="https://github.com/navapbc/strata/repos/">
    <img alt="GitHub Downloads (all assets, all releases)" src="https://img.shields.io/github/downloads/navapbc/strata/total">
  </a>
</h4>

## About Strata

Whether you’re modernizing a legacy system or standing up a new program, Nava Strata can help you:

- Rapidly meet programmatic goals and build excellent experiences
- Adopt best practice workflows and security
- Equip developers with best-in-class tools

Nava Strata currently includes:

- **Infrastructure templates:** A set of templates for quickly setting up production-ready, cloud-native infrastructure
- **Application templates:** A set of templates to quickly begin building user-facing and backend applications
- **Software Development Kit**: A suite of composable software development tools for building human-centered digital services applications

Leverage them together or separately, depending on your needs and goals.

## Strata components

### Strata infrastructure templates

Use the infrastructure templates to quickly set up secure and production-ready infrastructure in AWS for your application. Strata infrastructure templates are available for AWS and Azure. Use the infrastructure templates with any of the application templates, or with any other application that satisfies the infra template’s application requirements.

**[AWS infrastructure template](https://github.com/navapbc/template-infra)** – this provides AWS infrastructure as well as some general non-infrastructure project tools like PR templates and ADR (architecture decision record) templates.

**[Azure infrastructure template](https://github.com/navapbc/template-infra-azure)** - this is the Azure equivalent of the AWS infrastructure template. Longer term, we may consolidate this with the AWS infrastructure template to create a single consolidated infrastructure template that can be configured to use AWS or Azure.
You can also use the infrastructure template with multiple applications at a time, but it will require a few steps to accomplish that configuration.

### Strata application templates

Application templates allow project teams to quickly spin up new production ready applications. Engineers can copy the templates to their own project's GitHub repository in order to get started more quickly. The templates provide many default technical choices that represent best practices for implementing government systems. These best practices were evolved by Nava over many years of experience working on GovTech projects, and will continue to evolve. Strata application templates are available for Rails, Next.js, and Flask.

**[The Rails template](https://github.com/navapbc/template-application-rails)** provides a template for web applications built with the Ruby on Rails framework. It has everything you need to build server-based web applications, including user-facing applications, APIs, and data engineering workflows. It comes integrated with the US Web Design System, adapters for AWS and Azure, and tools for supporting internationalization, authorization, automated testing, and more.

**[The Next.js template](https://github.com/navapbc/template-application-nextjs)** provides a template for user-facing web applications built with the Next.js React framework. This template can be used to build traditional server-based web applications. It can also be used to build APIs. However, if your project has a significant data engineering (e.g. ETL jobs and other batch processing jobs) component, a Python-based tech stack is recommended (see the Python Flask template). This template can also be used to build static sites, but is currently not configured that way out of the box.

**[The Flask template](https://github.com/navapbc/template-application-flask)** provides a template for APIs and offline processes built with Python Flask. This template can be used to build APIs. It can also be used to build simple user-facing applications. However, if your application is heavily on the frontend, you may want to consider using the Rails template or Next.js template since that comes already configured with internationalization, the US Web Design System, and Lookbook (in the Rails template) or Storybook (in the Next.js template).

### Strata SDK

[The Strata Software Development Kit (SDK)](https://github.com/navapbc/flex-sdk) will help your agency’s developers create best-in-class case management systems, including multi-page intake applications and case management workflows. The SDK is modular, allowing you to integrate the components you need with your program. This means you can build a new system from scratch, or plug new features into your existing system.

### Strata CLI

[The Strata CLI](https://github.com/navapbc/platform-cli) is a command line tool to make installing, upgrading, and using the Strata templates easy.

## Getting started

To get started using the templates, first create a git repo for your project.

1. If you are starting from scratch and need infrastructure, then start with the [infra template](https://github.com/navapbc/template-infra) and follow the instructions on the template's README to install the template in a single command line.
2. Choose which application template you want to use and follow the instructions on the respective template's README to install the template.
3. If you are building a government digital service, consider using the [Strata SDK](https://github.com/navapbc/strata-sdk) to build your application.

## Open source projects built on Strata

- [Community engagement requirements reporting application for Medicaid](https://github.com/navapbc/community-engagement-medicaid) by Nava PBC
- [Simpler Grants.gov redesign](https://github.com/HHS/simpler-grants-gov) by the Department of Health and Human Services
