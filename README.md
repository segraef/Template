# Template

This repository serves as a **Default Template Repository** according official [GitHub Contributing Guidelines][ProjectSetup] for healthy contributions. It brings you clean default Templates for several areas:

- [Azure DevOps Pull Requests](.azuredevops/PULL_REQUEST_TEMPLATE.md) ([`.azuredevops\PULL_REQUEST_TEMPLATE.md`](`.azuredevops\PULL_REQUEST_TEMPLATE.md`))
- [Azure Pipelines](.pipelines/pipeline.yml) ([`.pipelines/pipeline.yml`](`.pipelines/pipeline.yml`))
- [GitHub Workflows](.github/workflows/)
  - [Super Linter](.github/workflows/linter.yml) ([`.github/workflows/linter.yml`](`.github/workflows/linter.yml`))
  - [PowerShell ScriptAnalyzer](.github/workflows/scriptanalyzer.yml) ([`.github/workflows/scriptanalyzer.yml`](`.github/workflows/scriptanalyzer.yml`))
  - [Template Sync](.github/workflows/template-sync.yml) ([`.github/workflows/template-sync.yml`](`.github/workflows/template-sync.yml`)) _keeps generated repos in sync with this template_
  - [Sample Workflows](.github/workflows/workflow.yml) ([`.github/workflows/workflow.yml`](`.github/workflows/workflow.yml`))
- [PowerShell scaffolding](PowerShell/) ([`PowerShell/_Template.ps1`](PowerShell/_Template.ps1), [`PowerShell/Write-Log.psm1`](PowerShell/Write-Log.psm1))
- [Bash scaffolding](Bash/) ([`Bash/_Template.sh`](Bash/_Template.sh), [`Bash/log.sh`](Bash/log.sh))
- [PSScriptAnalyzer settings](PSScriptAnalyzerSettings.psd1) ([`PSScriptAnalyzerSettings.psd1`](PSScriptAnalyzerSettings.psd1))
- [GitHub Pull Requests](.github/PULL_REQUEST_TEMPLATE.md) ([`.github/PULL_REQUEST_TEMPLATE.md`](`.github/PULL_REQUEST_TEMPLATE.md`))
- [GitHub Issues](.github/ISSUE_TEMPLATE/)
  - [Feature Requests](.github/ISSUE_TEMPLATE/FEATURE_REQUEST.md) ([`.github/ISSUE_TEMPLATE/FEATURE_REQUEST.md`](`.github/ISSUE_TEMPLATE/FEATURE_REQUEST.md`))
  - [Bug Reports](.github/ISSUE_TEMPLATE/BUG_REPORT.md) ([`.github/ISSUE_TEMPLATE/BUG_REPORT.md`](`.github/ISSUE_TEMPLATE/BUG_REPORT.md`))
- [Codeowners](.github/CODEOWNERS) ([`.github/CODEOWNERS`](`.github/CODEOWNERS`)) _adjust usernames once cloned_
- [Wiki and Documentation](docs/) ([`docs/`](`docs/`))
- [gitignore](.gitignore) ([`.gitignore`](.gitignore))
- [gitattributes](.gitattributes) ([`.gitattributes`](.gitattributes))
- [Changelog](CHANGELOG.md) ([`CHANGELOG.md`](`CHANGELOG.md`))
- [Code of Conduct](CODE_OF_CONDUCT.md) ([`CODE_OF_CONDUCT.md`](`CODE_OF_CONDUCT.md`))
- [Contribution](CONTRIBUTING.md) ([`CONTRIBUTING.md`](`CONTRIBUTING.md`))
- [License](LICENSE) ([`LICENSE`](`LICENSE`)) _adjust projectname once cloned_
- [Readme](README.md) ([`README.md`](`README.md`))
- [Security](SECURITY.md) ([`SECURITY.md`](`SECURITY.md`))


## Status

[![Super Linter](<https://github.com/segraef/Template/actions/workflows/linter.yml/badge.svg>)](<https://github.com/segraef/Template/actions/workflows/linter.yml>)

[![Sample Workflow](<https://github.com/segraef/Template/actions/workflows/workflow.yml/badge.svg>)](<https://github.com/segraef/Template/actions/workflows/workflow.yml>)

## Creating a repository from a template

You can [generate](https://github.com/segraef/Template/generate) a new repository with the same directory structure and files as an existing repository. More details can be found [here][CreateFromTemplate].

## After generating a repository

A generated repository keeps the template's placeholders. Replace them before you start, or you ship the template's identity instead of your own:

- [ ] `README.md` - rewrite the title, description and badge URLs (`segraef/Template` -> `<owner>/<repo>`).
- [ ] `README.md` / `CONTRIBUTING.md` - update the `[GitHubIssues]` link to your repo.
- [ ] `CHANGELOG.md` - replace the `@your_username` / example entries with real ones.
- [ ] `CODE_OF_CONDUCT.md` - fill in the `[INSERT EMAIL ADDRESS]` contact.
- [ ] `LICENSE` - confirm the copyright holder and year.
- [ ] `.github/CODEOWNERS` - set the owning user/team.
- [ ] `SECURITY.md` - point reporting at a channel you actually monitor.

## Keeping in sync with this template

GitHub's "Use this template" copies files once with **no** ongoing link (the generated repo has an unrelated git history). To pull later template changes:

- **Automatic:** the included [`template-sync.yml`](.github/workflows/template-sync.yml) workflow ([AndreasAugustin/actions-template-sync](https://github.com/AndreasAugustin/actions-template-sync)) opens a PR whenever this template changes. Protect repo-specific files with [`.templatesyncignore`](.templatesyncignore).
- **Manual:** add this template as a remote and cherry-pick scaffolding changes:

  ```bash
  git remote add template https://github.com/segraef/Template.git
  git fetch template
  git checkout template/main -- .github .gitignore .gitattributes PSScriptAnalyzerSettings.psd1
  ```

## Reporting Issues and Feedback

### Issues and Bugs

If you find any bugs, please file an issue in the [GitHub Issues][GitHubIssues] page. Please fill out the provided template with the appropriate information.

If you are taking the time to mention a problem, even a seemingly minor one, it is greatly appreciated, and a totally valid contribution to this project. **Thank you!**

## Feedback

If there is a feature you would like to see in here, please file an issue or feature request in the [GitHub Issues][GitHubIssues] page to provide direct feedback.

## Contribution

If you would like to become an active contributor to this repository or project, please follow the instructions provided in [`CONTRIBUTING.md`][Contributing].

## Learn More

* [GitHub Documentation][GitHubDocs]
* [Azure DevOps Documentation][AzureDevOpsDocs]
* [Microsoft Azure Documentation][MicrosoftAzureDocs]

<!-- References -->

<!-- Local -->
[ProjectSetup]: <https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions>
[CreateFromTemplate]: <https://docs.github.com/en/github/creating-cloning-and-archiving-repositories/creating-a-repository-on-github/creating-a-repository-from-a-template>
[GitHubDocs]: <https://docs.github.com/>
[AzureDevOpsDocs]: <https://docs.microsoft.com/en-us/azure/devops/?view=azure-devops>
[GitHubIssues]: <https://github.com/segraef/Template/issues>
[Contributing]: CONTRIBUTING.md

<!-- Docs -->
[MicrosoftAzureDocs]: <https://docs.microsoft.com/en-us/azure/>
