# git-fpaste

Integrating git with fpaste since 2015.

## Dependencies

- fpaste
- curl
- git


## Installation

```bash
$ git clone https://github.com/moonlite/git-fpaste.git
$ cd git-fpaste
$ make user-install # Install to ~/.local/bin
$ make install      # Install to /usr/local/bin/
```

## Usage

    Usage: git fpaste <command> [<args>]
    
    The available git-fpaste commands are:
       am             Apply a mailbox formatted patch series from fpaste
       apply          Apply a patch from fpaste
       diff           Post changes between commits to fpaste
       format-patch   Post a mailbox formatted patch series to fpaste

