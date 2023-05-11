<div id="top"></div>

<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/terminalPoltergeist/dotfiles">
    <img src="/assets/output-onlinepngtools.png" alt="Logo" width="600" height="200">
  </a>

  <p align="center">
    For a developer, <code>$HOME</code> is where the heart is. 
    <br/>
    We decorate our <code>$HOME</code> with dotfiles; these are mine.
  </p>

  <img src="https://img.shields.io/tokei/lines/github/terminalPoltergeist/dotfiles" alt="lines">
  <img src="https://img.shields.io/github/commit-activity/m/terminalPoltergeist/dotfiles" alt="commit frequency">
  <img src="https://img.shields.io/github/last-commit/terminalPoltergeist/dotfiles" alt="last commit">
</div>

<br/>

## About this Repo

I started "dotfiling" with a single .bashrc file. 

As my needs of customizing my development environment grew, so did my configurations.

I have gone through many iterations of this repository, this is the current version.

[Here is a cool post on the philosophy behind robust dotfiles](https://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/) from [@holman](https://github.com/holman) 

<p align="right">(<a href="#top">back to top</a>)</p>

## Using my Configurations

As with any configurations, don't blindly copy these onto your system.

If you want to try my configurations:
1. Fork this repository
2. Review all the code
3. Remove what doesn't make sense to you or you don't want
4. Make the necessary changes for these configurations to work with your system

### How to use my configs

*I hope to integrate some sort of automation for installation in the future. Alas, I am lazy*

#### 1. Clean up existing dotfiles
- If you have existing dotfiles, back them up and archive them
- If you have a pretty robust set of dotfiles already, I would recommend browsing through this repository and selecting the things you want to try and injecting them into your existing configs 
<br/>(*do so at your own risk. always make sure you understand the consequences of making a change to a configuration*)

#### 2. Fork and clone this repository
- [Fork the repository](https://github.com/terminalPoltergeist/dotfiles/fork)
- Clone the repository
    - `git clone https://github.com/<YOUR-USERNAME-HERE>/dotfiles.git ~/dotfiles`

#### 3. Make changes
- Many of these configurations will not work "out of the box".
    - I have redacted sensitive personal information that you will need to provide for the configurations to work

<p align="right">(<a href="#top">back to top</a>)</p>

## TO DOs

*these are features/changes I want to make. I may implement a changelog in the future to help organize this.*

_structure_
- [ ] reorganize file structure
    - [ ] create directories for each system's/program's configs
      - directory for stardard bash/system dotfiles
      - directory for each apps dotfiles
    - [ ] move larger functions into dedicated file
      - possibly transition to a go cmdlet
    - [ ] make each piece of functionality completely modular
      - allow a single feature to be integrated into existing configs

_usability_
- [ ] refresh install script
    - [ ] create better linking system
    - [ ] make install process more efficient
- [ ] write dotfiles local backup script
- [ ] C utility that forks and execs ssh for all cse labs machines and exits on first success
- [ ] tmux function to restore sessions after reboot
  - [ ] get all info for all open sessions
    - session name, number and position of windows and panes,  
      paths to open files and current working directories/ running programs

_style_
- [ ] add [Gum](https://github.com/charmbracelet/gum) to stylize scripts
    - [X] use list selection rater than prompt/response for functions like `gcheck`
    - [X] use text fields for functions like `symlink`
    - [X] commit function with gum
      - [X] update to not include what/why if empty
      - [ ] adjust column width for body fields
    - [X] use list selection for `thispath` function?
    - [ ] tmux function to list sessions and options (attach, kill, etc)
<p align="right">(<a href="#top">back to top</a>)</p>
