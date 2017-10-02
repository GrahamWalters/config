# Config

**This is a WIP. install.sh needs cleaning up. I maybe I should split that file up**

**Config** is inspired by [Mark Otto's Config repo](https://github.com/mdo/config/). Running `install.sh` should apply system preferences, Sublime Text preferences, install dev tools, and more.

## Contents

| File | Description |
| --- | --- |
| `.bash_profile` | Customizes the Terminal.app |
| `.gitconfig` | Global Git configuration to specify my name and email, shortcuts, colors, and more. |
| `hosts` | Directs `http://tmp.dev` to a local folder |


## Before You Start

1. Install SSH keys


## Yet to be automated

- Prep Terminal.app from Mark Otto's Config repo
- PHP Install Instructions https://getgrav.org/blog/macos-sierra-apache-multiple-php-versions

## Still deciding:
- nginx or apache. apache in the past. nginx in production
- Which versions of php to install. 5.6 and 7?


## Manual Install Instructions

### Sublime Text 3 Package Control
[Package Control](https://packagecontrol.io/installation) should be installed **after** running install.sh

### Rails
I need to know more about if I can install multiple versions of rails "globally" before automating this.
https://gorails.com/setup/osx/10.13-high-sierra

