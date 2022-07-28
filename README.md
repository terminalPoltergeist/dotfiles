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

I quickly found out how awesome configuring is and wanted to make a more beautiful, modular repository of my configurations. 

I knew version control was important for configurations, so I made a git repo for my configs. 

I have gone through many iterations of this repository, this is the current iteration. 

[Here is a cool post on the philosophy behind robust dotfiles](https://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/) from @holman 

<p align="right">(<a href="#top">back to top</a>)</p>

## Using my Configurations

#### First off, a warning.
**Do not blindly copy these configurations onto your system.**

If you want to try my configurations:
1. Fork this repository
2. Review all the code
3. Remove what doesn't make sense to you or you don't want
4. Make the necessary changes for these configurations to work with your system

### How to use my configs

*I hope to integrate some sort of automation for installation in the future. I am too inexperienced at this point to make that happen. But stay tuned, it's coming.*

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

- [ ] reorganize file structure
    - [ ] create directories for each system's/program's configs
- [ ] refresh install script
    - [ ] create better linking system
    - [ ] make install process more efficient

<p align="right">(<a href="#top">back to top</a>)</p>

## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make my configurations better, please fork the repo and create a pull request. You can also simply open an issue with the tag "feature".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#top">back to top</a>)</p>
