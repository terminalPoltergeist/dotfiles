<div id="top"></div>

<div align="center">
  <a href="https://github.com/terminalPoltergeist/dotfiles">
    <img src="/assets/output-onlinepngtools.png" alt="Logo" width="600" height="200">
  </a>

  <p align="center">
    For a developer, $HOME is where the heart is. 
    <br/>
    We decorate our $HOME with dotfiles; these are mine.
  </p>

  <img src="https://img.shields.io/github/repo-size/terminalPoltergeist/dotfiles" alt="size">
  <img src="https://img.shields.io/github/commit-activity/m/terminalPoltergeist/dotfiles" alt="commit frequency">
  <img src="https://img.shields.io/github/last-commit/terminalPoltergeist/dotfiles" alt="last commit">
</div>

<br/>

## About this Repo

I started "dotfiling" with a single .bashrc file. 

As my needs of customizing my development environment grew, so did my configurations.

I have gone through many iterations of this repository, this is the current version.

[Here is a cool post on the philosophy behind robust dotfiles](https://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/) from [@holman](https://github.com/holman) 

I use Ansible for managing my configurations. This makes it easier to bootstrap a new system and apply changes idempotently.

## Usage

Before running be sure to backup any configurations you want to preserve.

To run the install script:

```bash
bash -c "$(curl -fSL https://raw.githubusercontent.com/terminalPoltergeist/dotfiles/main/install > .tmp)" && source .tmp && rm .tmp
```
